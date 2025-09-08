import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/components/app_bars/app_bar.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';

class ParentInfoView extends StatefulWidget {
  const ParentInfoView({super.key});

  @override
  State<ParentInfoView> createState() => _ParentInfoViewState();
}

class _ParentInfoViewState extends State<ParentInfoView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController(text: 'Emirhan Erel');
  final _phoneController = TextEditingController(text: '+90 555-555-55-55');

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoadingView(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            title: 'Veli Bilgileri',
            havePop: true,
            backgroundColor: Colors.white,
            titleColor: Colors.black,
            leadingColor: Colors.black,
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Form Container
                Container(
                  padding: const EdgeInsets.all(24),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Ad Soyad Field
                      _buildFormField(
                        label: 'Ad Soyad',
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ad Soyad alanı boş bırakılamaz';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      
                      // Telefon Field
                      _buildPhoneField(),
                      const SizedBox(height: 32),
                      
                      // Save Button
                      _buildSaveButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormField({
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            validator: validator,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Telefon',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Row(
            children: [
              // Country Code
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 20,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: const Icon(
                        Icons.flag,
                        size: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '+90',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              // Phone Number Input
              Expanded(
                child: TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    border: InputBorder.none,
                    hintText: '555-555-55-55',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Telefon numarası boş bırakılamaz';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF4CAF50),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF4CAF50).withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () {
              if (_formKey.currentState!.validate()) {
                // Save form data
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Bilgiler başarıyla kaydedildi'),
                    backgroundColor: Color(0xFF4CAF50),
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: Center(
              child: Text(
                'Kaydet',
                style: context.fonts.button.copyWith(
                  color: Colors.white,
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