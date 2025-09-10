import 'package:appsos/configs/route/route_name.dart';
import 'package:appsos/services/local/secure_storage/secure_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:appsos/configs/theme/app_colors.dart';
import 'package:appsos/features/splash/widgets/animated_logo.dart';
import 'package:appsos/features/splash/widgets/animated_loading_indicator.dart';
import 'package:appsos/features/splash/widgets/floating_particles.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;
  late AnimationController _backgroundController;

  late Animation<double> _logoScaleAnimation;
  late Animation<double> _logoOpacityAnimation;
  late Animation<double> _textSlideAnimation;
  late Animation<double> _textOpacityAnimation;
  late Animation<double> _backgroundOpacityAnimation;
  final SecureStorageService _secureStorageService = SecureStorageService();

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _startAnimations();
  }

  void _initializeAnimations() {
    // Logo animations
    _logoController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _logoScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.elasticOut),
    );
    _logoOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _logoController, curve: const Interval(0.0, 0.8)),
    );

    // Text animations
    _textController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    _textSlideAnimation = Tween<double>(begin: 50.0, end: 0.0).animate(
      CurvedAnimation(parent: _textController, curve: Curves.easeOutCubic),
    );
    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _textController, curve: const Interval(0.2, 1.0)),
    );

    // Background animation
    _backgroundController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _backgroundOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _backgroundController, curve: Curves.easeInOut),
    );
  }

  void _startAnimations() async {
    // Start background animation immediately
    _backgroundController.forward();

    // Start logo animation after a short delay
    await Future.delayed(const Duration(milliseconds: 300));
    _logoController.forward();

    // Start text animation after logo starts
    await Future.delayed(const Duration(milliseconds: 500));
    _textController.forward();

    // Navigate to next screen after 3 seconds
    await Future.delayed(const Duration(milliseconds: 3000));
    if (mounted) {
      final token = await _secureStorageService.readToken();
      if (token != null) {
        // ignore: use_build_context_synchronously
        context.goNamed(RouteName.main);
      } else {
        // ignore: use_build_context_synchronously
        context.goNamed(RouteName.login);
      }
    }
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    _backgroundController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _backgroundController,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primary.withValues(
                    alpha: _backgroundOpacityAnimation.value,
                  ),
                  AppColors.primaryLight.withValues(
                    alpha: _backgroundOpacityAnimation.value,
                  ),
                  AppColors.secondary.withValues(
                    alpha: _backgroundOpacityAnimation.value * 0.7,
                  ),
                ],
                stops: const [0.0, 0.6, 1.0],
              ),
            ),
            child: Stack(
              children: [
                // Floating particles background
                const FloatingParticles(),

                // Main content
                SafeArea(
                  child: Column(
                    children: [
                      // Top spacing
                      SizedBox(height: 15.h),

                      // Logo section
                      Expanded(
                        flex: 3,
                        child: AnimatedLogo(
                          size: 25.w,
                          scaleAnimation: _logoScaleAnimation,
                          opacityAnimation: _logoOpacityAnimation,
                        ),
                      ),

                      // App name and tagline
                      Expanded(
                        flex: 2,
                        child: AnimatedBuilder(
                          animation: _textController,
                          builder: (context, child) {
                            return Transform.translate(
                              offset: Offset(0, _textSlideAnimation.value),
                              child: Opacity(
                                opacity: _textOpacityAnimation.value,
                                child: _buildAppInfo(),
                              ),
                            );
                          },
                        ),
                      ),

                      // Loading indicator
                      Expanded(
                        flex: 1,
                        child: const AnimatedLoadingIndicator(),
                      ),

                      // Copyright
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.h),
                        child: Text(
                          "© 2025 AppSos. All rights reserved.",
                          style: TextStyle(
                            color: AppColors.white.withValues(alpha: 0.8),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildAppInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "AppSos",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          "Connect. Share. Inspire.",
          style: TextStyle(
            color: AppColors.white.withValues(alpha: 0.9),
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 0.5.h),
        Text(
          "Your Social Media Companion",
          style: TextStyle(
            color: AppColors.white.withValues(alpha: 0.7),
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
