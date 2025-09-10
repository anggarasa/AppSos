import 'package:appsos/configs/route/route_name.dart';
import 'package:appsos/configs/theme/app_colors.dart';
import 'package:appsos/features/auth_login/bloc/login_bloc.dart';
import 'package:appsos/services/remote/configs/network_exceptions.dart';
import 'package:appsos/widgets/forms/labeled_text_field.dart';
import 'package:appsos/widgets/snackbar/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) return 'Email wajib diisi';
    final emailRegExp = RegExp(r'^\S+@\S+\.\S+$');
    if (!emailRegExp.hasMatch(value.trim())) return 'Format email tidak valid';
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) return 'Password wajib diisi';
    if (value.length < 6) return 'Minimal 6 karakter';
    return null;
  }

  // Future<void> _onLoginPressed() async {
  //   FocusScope.of(context).unfocus();
  //   if (!_formKey.currentState!.validate()) return;

  //   setState(() => _isSubmitting = true);
  //   await Future.delayed(const Duration(milliseconds: 900));
  //   if (!mounted) return;
  //   setState(() => _isSubmitting = false);

  //   // TODO: Integrate with real auth then navigate accordingly
  //   context.goNamed(RouteName.main);
  // }

  bool get _isFormFilled =>
      _emailController.text.trim().isNotEmpty &&
      _passwordController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(
        builder: (context) {
          return BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              state.whenOrNull(
                loading: () {
                  setState(() {
                    _isSubmitting = true;
                  });
                },
                success: (data) {
                  setState(() {
                    _isSubmitting = false;
                  });
                  context.goNamed(RouteName.main);
                },
                failed: (error) {
                  setState(() {
                    _isSubmitting = false;
                  });
                  final message =
                      error.whenOrNull(
                        timeout: (message) =>
                            message ?? 'Permintaan timeout. Coba lagi.',
                        badResponse: (statusCode, message, data) =>
                            message ?? 'Terjadi kesalahan ($statusCode).',
                        cancel: (message) =>
                            message ?? 'Permintaan dibatalkan.',
                        connectionError: (message) =>
                            message ??
                            'Gangguan koneksi. Periksa internet Anda.',
                        unknown: (message) =>
                            message ?? 'Kesalahan tidak diketahui.',
                        defaultError: (message) =>
                            message ?? 'Terjadi kesalahan.',
                      ) ??
                      'Login gagal. Silakan coba lagi.';
                  AppSnackBar.showError(context, message);
                },
              );
            },
            child: Scaffold(
              backgroundColor: AppColors.background,
              body: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Stack(
                  children: [
                    // Background gradient header
                    Container(
                      height: MediaQuery.of(context).size.height * 0.38,
                      decoration: const BoxDecoration(
                        gradient: AppColors.primaryGradient,
                      ),
                    ),
                    SafeArea(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            // Title
                            Text(
                              'Welcome Back',
                              style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Masuk untuk melanjutkan aktivitas Anda',
                              style: TextStyle(
                                color: AppColors.white.withValues(alpha: 0.9),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 24),

                            // Card
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.fromLTRB(
                                20,
                                20,
                                20,
                                12,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.surface,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primary.withValues(
                                      alpha: 0.10,
                                    ),
                                    blurRadius: 20,
                                    offset: const Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    // Email
                                    LabeledTextFieldExtension.email(
                                      controller: _emailController,
                                      labelText: 'Email',
                                      hintText: 'nama@email.com',
                                      validator: _emailValidator,
                                      onChanged: (_) => setState(() {}),
                                    ),
                                    const SizedBox(height: 14),

                                    // Password
                                    LabeledTextFieldExtension.password(
                                      controller: _passwordController,
                                      labelText: 'Password',
                                      hintText: '••••••••',
                                      obscureText: _obscurePassword,
                                      validator: _passwordValidator,
                                      onChanged: (_) => setState(() {}),
                                      suffixIcon: IconButton(
                                        onPressed: () => setState(
                                          () => _obscurePassword =
                                              !_obscurePassword,
                                        ),
                                        icon: Icon(
                                          _obscurePassword
                                              ? Icons.visibility_off_outlined
                                              : Icons.visibility_outlined,
                                          color: AppColors.textSecondary,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 6),

                                    // Forgot password (optional – hidden for now)
                                    // Align(
                                    //   alignment: Alignment.centerRight,
                                    //   child: TextButton(
                                    //     onPressed: () {},
                                    //     child: const Text('Lupa password?'),
                                    //   ),
                                    // ),
                                    const SizedBox(height: 8),
                                    // Login button
                                    SizedBox(
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed:
                                            _isFormFilled && !_isSubmitting
                                            ? () {
                                                context.read<LoginBloc>().add(
                                                  LoginEvent.login(
                                                    email: _emailController.text
                                                        .trim(),
                                                    password:
                                                        _passwordController.text
                                                            .trim(),
                                                  ),
                                                );
                                              }
                                            : null,
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.primary,
                                          disabledBackgroundColor: AppColors
                                              .primary
                                              .withValues(alpha: 0.5),
                                          foregroundColor: AppColors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          elevation: 0,
                                        ),
                                        child: _isSubmitting
                                            ? const SizedBox(
                                                height: 22,
                                                width: 22,
                                                child: CircularProgressIndicator(
                                                  strokeWidth: 2.5,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                        Color
                                                      >(AppColors.white),
                                                ),
                                              )
                                            : const Text(
                                                'Masuk',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 16),
                            // Register link
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Belum punya akun? ',
                                  style: TextStyle(
                                    color: AppColors.textSecondary,
                                    fontSize: 14,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.pushNamed(RouteName.register);
                                  },
                                  child: const Text(
                                    'Daftar',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
