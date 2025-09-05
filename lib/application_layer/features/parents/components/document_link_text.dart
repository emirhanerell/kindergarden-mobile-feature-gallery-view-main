import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/icon_path_enums.dart';

class DocumentLinkText extends StatefulWidget {
  const DocumentLinkText({super.key});

  @override
  State<DocumentLinkText> createState() => _DocumentLinkTextState();
}

class _DocumentLinkTextState extends State<DocumentLinkText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Örnek Çizim',
                  style: context.fonts.smallBodyUnderline
                      .copyWith(color: context.rTextColors.error)),
              SizedBox(
                width: 5,
              ),
              IconPathEnums.acrobat.widget(
                height: 13,
                width: 13,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
