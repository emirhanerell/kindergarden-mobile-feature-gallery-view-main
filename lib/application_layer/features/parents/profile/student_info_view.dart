import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/components/app_bars/app_bar.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';

class StudentInfoView extends StatefulWidget {
  const StudentInfoView({super.key});

  @override
  State<StudentInfoView> createState() => _StudentInfoViewState();
}

class _StudentInfoViewState extends State<StudentInfoView> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            title: 'Öğrenci Bilgileri',
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
              // İletişim Section
              _buildContactSection(context),
              const SizedBox(height: 16),
              
              // Student Cards
              _buildStudentCard(
                context: context,
                studentNumber: 1,
                studentName: 'Emirhan Erel',
                phone: '90-5454020934',
              ),
              const SizedBox(height: 16),
              
              _buildStudentCard(
                context: context,
                studentNumber: 2,
                studentName: 'Emirhan Erel',
                phone: '90-5454020934',
              ),
              const SizedBox(height: 16),
              
              // Kişisel Bilgiler Section
              _buildPersonalInfoSection(context),
              const SizedBox(height: 24),
              
              // Save Button with Avatar
              _buildSaveSection(context),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactSection(BuildContext context) {
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
            'İletişim',
            style: context.fonts.title.copyWith(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          
          _buildContactInfoRow('1. Veli Adı', 'Emirhan Erel', context),
          const SizedBox(height: 8),
          _buildContactInfoRow('Veli Telefon', '90-5454020934', context),
          const SizedBox(height: 16),
          
          _buildContactInfoRow('2. Veli Adı', 'Emirhan Erel', context),
          const SizedBox(height: 8),
          _buildContactInfoRow('Veli Telefon', '90-5454020934', context),
        ],
      ),
    );
  }

  Widget _buildContactInfoRow(String label, String value, BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: context.fonts.small.copyWith(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: context.fonts.body.copyWith(
              color: Colors.black87,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStudentCard({
    required BuildContext context,
    required int studentNumber,
    required String studentName,
    required String phone,
  }) {
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
            '$studentNumber. Veli Adı',
            style: context.fonts.title.copyWith(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            studentName,
            style: context.fonts.body.copyWith(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          
          Text(
            'Veli Telefon',
            style: context.fonts.small.copyWith(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            phone,
            style: context.fonts.body.copyWith(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPersonalInfoSection(BuildContext context) {
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
            'Kişisel Bilgiler',
            style: context.fonts.title.copyWith(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          
          _buildPersonalInfoRow('Doğum Tarihi', '27.03.2002', context),
          const SizedBox(height: 12),
          _buildPersonalInfoRow('Kan Grubu', 'A-Rh +', context),
          const SizedBox(height: 12),
          _buildPersonalInfoRow('Kronik Hastalık', 'VAR', context, isHighlight: true),
        ],
      ),
    );
  }

  Widget _buildPersonalInfoRow(String label, String value, BuildContext context, {bool isHighlight = false}) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: context.fonts.small.copyWith(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            value,
            style: context.fonts.body.copyWith(
              color: isHighlight ? Colors.red : Colors.black87,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        if (isHighlight)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'Bakınız',
              style: context.fonts.small.copyWith(
                color: Colors.red,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildSaveSection(BuildContext context) {
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
      child: Row(
        children: [
          // Profile Avatars
          Row(
            children: [
              _buildAvatar('E', const Color(0xFFFF6B35)),
              const SizedBox(width: 8),
              _buildAvatar('', Colors.grey, isSecondary: true),
            ],
          ),
          const Spacer(),
          
          // Save Button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF4CAF50),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF4CAF50).withOpacity(0.3),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Text(
              'Kaydet',
              style: context.fonts.button.copyWith(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(String text, Color color, {bool isSecondary = false}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: isSecondary ? Border.all(color: Colors.grey[300]!, width: 2) : null,
      ),
      child: Center(
        child: isSecondary
            ? const Icon(Icons.person, color: Colors.grey, size: 20)
            : Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}