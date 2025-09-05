import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/album/album_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/announcement/announcement_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/documents/documents_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/homework/homework_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/payments/payments_view.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/icon_path_enums.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Section
                  _buildHeader(context),
                  const SizedBox(height: 24),
                  
                  // Feature Grid
                  _buildFeatureGrid(context),
                  const SizedBox(height: 24),
                  
                  // Status Cards Section
                  _buildStatusCards(context),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Merhaba Öğretmen',
                  style: context.fonts.small.copyWith(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Emirhan Erel!',
                  style: context.fonts.title.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEB142),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.school,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Çalışkanlar Sınıfı',
                        style: context.fonts.small.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.edit,
                        size: 14,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[300]!,
                    width: 2,
                  ),
                ),
                child: ClipOval(
                  child: Container(
                    color: Colors.grey[200],
                    child: const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureGrid(BuildContext context) {
    final features = [
      FeatureItem(
        icon: Icons.campaign,
        title: 'Duyuru',
        onTap: () => context.navigateTo(const AnnouncementView()),
      ),
      FeatureItem(
        icon: Icons.analytics,
        title: 'Rapor',
        onTap: () {},
      ),
      FeatureItem(
        icon: Icons.medical_services,
        title: 'Tedavi',
        onTap: () {},
      ),
      FeatureItem(
        icon: Icons.schedule,
        title: 'Program',
        onTap: () {},
      ),
      FeatureItem(
        icon: Icons.groups,
        title: 'Öğrenciler',
        onTap: () {},
      ),
      FeatureItem(
        icon: Icons.restaurant,
        title: 'Yemek',
        onTap: () {},
      ),
      FeatureItem(
        icon: Icons.description,
        title: 'Döküman',
        onTap: () => context.navigateTo(const DocumentsView()),
      ),
      FeatureItem(
        icon: Icons.assignment,
        title: 'Ödevler',
        onTap: () => context.navigateTo(const HomeworkView()),
      ),
      FeatureItem(
        icon: Icons.how_to_reg,
        title: 'Katılım',
        onTap: () {},
      ),
      FeatureItem(
        icon: Icons.dashboard,
        title: 'Genel Durum',
        onTap: () {},
      ),
      FeatureItem(
        icon: Icons.photo_library,
        title: 'Galeri',
        onTap: () => context.navigateTo(const AlbumView()),
      ),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: features.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (context, index) {
        final feature = features[index];
        return GestureDetector(
          onTap: feature.onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    feature.icon,
                    size: 28,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  feature.title,
                  style: context.fonts.small.copyWith(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildStatusCards(BuildContext context) {
    final statusItems = [
      StatusCard(
        icon: Icons.person_off,
        title: 'Devamsızlıklar',
        subtitle: 'Sisteme henüz devamsızlık işlenmedi.',
        color: const Color(0xFFFEB142),
      ),
      StatusCard(
        icon: Icons.summarize,
        title: 'Gün Sonu Raporu',
        subtitle: 'Sisteme henüz gün sonu raporu işlenmedi.',
        color: const Color(0xFFFEB142),
      ),
      StatusCard(
        icon: Icons.assignment,
        title: 'Ödevler',
        subtitle: 'Henüz bir ödev tanımlanmadı.',
        color: const Color(0xFFFEB142),
      ),
      StatusCard(
        icon: Icons.medication,
        title: 'İlaç Takibi',
        subtitle: 'Sisteme henüz ilaç verisi işlenmedi.',
        color: const Color(0xFFFEB142),
      ),
      StatusCard(
        icon: Icons.photo_library,
        title: 'Galeri',
        subtitle: 'Sınıf Galerisini Göz Atın.',
        color: const Color(0xFFFEB142),
        onTap: () => context.navigateTo(const AlbumView()),
      ),
    ];

    return Column(
      children: statusItems.map((item) => _buildStatusCard(context, item)).toList(),
    );
  }

  Widget _buildStatusCard(BuildContext context, StatusCard item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: item.color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: item.onTap,
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                item.icon,
                color: Colors.black87,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: context.fonts.body.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.subtitle,
                    style: context.fonts.small.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureItem {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  FeatureItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}

class StatusCard {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback? onTap;

  StatusCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    this.onTap,
  });
}
