import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/components/app_bars/app_bar.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/profile/parent_info_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/profile/student_info_view.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            title: 'Kişisel Bilgiler',
            havePop: true,
            backgroundColor: Colors.white,
            titleColor: Colors.black,
            leadingColor: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header Section
              _buildProfileHeader(context),
              const SizedBox(height: 24),
              
              // Veli Bilgileri Section
              _buildVeliBilgileriCard(context),
              const SizedBox(height: 16),
              
              // Genel Ayarlar Section
              _buildGenelAyarlarCard(context),
              const SizedBox(height: 16),
              
              // Yasal Metinler Section
              _buildYasalMetinlerCard(context),
              const SizedBox(height: 24),
              
              // Logout Button
              _buildLogoutButton(context),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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
      child: Column(
        children: [
          // Profile Image
          Container(
            width: 80,
            height: 80,
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
                  size: 40,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Öğrenci Velisi',
            style: context.fonts.small.copyWith(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          
          // Name and Phone Section
          _buildInfoRow('Ad Soyad', 'Emirhan Erel', context),
          const SizedBox(height: 12),
          _buildInfoRow('Veli Telefon', '90-5454020934', context),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: context.fonts.small.copyWith(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
        Text(
          value,
          style: context.fonts.body.copyWith(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildVeliBilgileriCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Veli Bilgileri',
            style: context.fonts.title.copyWith(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.edit, size: 16, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                'Düzenle',
                style: context.fonts.small.copyWith(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          _buildMenuTile(
            icon: Icons.person_outline,
            title: 'Veli Bilgileri',
            onTap: () => context.navigateTo(const ParentInfoView()),
          ),
          const SizedBox(height: 8),
          _buildMenuTile(
            icon: Icons.child_care,
            title: 'Öğrenci Bilgileri',
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () => context.navigateTo(const StudentInfoView()),
          ),
        ],
      ),
    );
  }

  Widget _buildGenelAyarlarCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Genel Ayarlar',
            style: context.fonts.title.copyWith(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.edit, size: 16, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                'Düzenle',
                style: context.fonts.small.copyWith(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          _buildMenuTile(
            icon: Icons.school,
            title: 'Öğrenci Bilgileri',
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () => context.navigateTo(const StudentInfoView()),
          ),
          const SizedBox(height: 8),
          _buildMenuTile(
            icon: Icons.message,
            title: 'İletişim Ayarları',
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildYasalMetinlerCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Yasal Metinler',
            style: context.fonts.title.copyWith(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          
          _buildMenuTile(
            icon: Icons.description,
            title: 'Kullanıcı Sözleşmesi',
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
          const SizedBox(height: 8),
          _buildMenuTile(
            icon: Icons.privacy_tip,
            title: 'KVKK Aydınlatma Metni',
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildMenuTile({
    required IconData icon,
    required String title,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, size: 20, color: Colors.grey[700]),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () {
              // Logout functionality
            },
            child: Center(
              child: Text(
                'Çıkış Yap',
                style: context.fonts.button.copyWith(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}