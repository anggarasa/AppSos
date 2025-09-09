import 'package:appsos/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PostItemData {
  final String id;
  final String authorId;
  final String content;
  final String? imageUrl;
  final DateTime createdAt;
  final int likes;
  final int comments;
  final int saves;

  const PostItemData({
    required this.id,
    required this.authorId,
    required this.content,
    required this.imageUrl,
    required this.createdAt,
    required this.likes,
    required this.comments,
    required this.saves,
  });

  factory PostItemData.fromJson(Map<String, dynamic> json) {
    final count = json['_count'] as Map<String, dynamic>? ?? const {};
    return PostItemData(
      id: json['id'] as String,
      authorId: json['authorId'] as String,
      content: json['content'] as String,
      imageUrl: json['imageUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      likes: (count['likes'] as num?)?.toInt() ?? 0,
      comments: (count['comments'] as num?)?.toInt() ?? 0,
      saves: (count['saves'] as num?)?.toInt() ?? 0,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.surface,
              pinned: true,
              title: const Text(
                "AppSos",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              centerTitle: false,
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 8)),
            SliverList.builder(
              itemBuilder: (context, index) {
                // Placeholder skeleton item; integrate real data source later
                return _PostCardSkeleton(index: index);
              },
              itemCount: 5,
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
          ],
        ),
      ),
    );
  }
}

class _PostCardSkeleton extends StatelessWidget {
  final int index;
  const _PostCardSkeleton({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: AppColors.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryLight.withValues(
                    alpha: 0.2,
                  ),
                  child: const Icon(Icons.person, color: AppColors.primary),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Username",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "2h ago",
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero.",
            ),
            const SizedBox(height: 8),
            if (index % 2 == 0)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 220,
                  color: AppColors.surfaceVariant,
                  child: const Center(
                    child: Icon(Icons.image, color: AppColors.grey),
                  ),
                ),
              ),
            const SizedBox(height: 10),
            Row(
              children: const [
                _ActionIcon(icon: Icons.favorite_border, label: "9"),
                SizedBox(width: 14),
                _ActionIcon(icon: Icons.mode_comment_outlined, label: "2"),
                SizedBox(width: 14),
                _ActionIcon(icon: Icons.bookmark_border, label: "0"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const _ActionIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 22, color: AppColors.grey),
        const SizedBox(width: 6),
        Text(label, style: const TextStyle(color: AppColors.textSecondary)),
      ],
    );
  }
}
