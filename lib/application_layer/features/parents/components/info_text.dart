import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/icon_path_enums.dart';

class InfoText extends StatefulWidget {
  const InfoText({super.key});

  @override
  State<InfoText> createState() => _InfoTextState();
}

class _InfoTextState extends State<InfoText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(11),
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Center(
              child: IconPathEnums.info.widget(
                color: Colors.black,
                height: 44,
                width: 44,
              ),
            ),
          ),
          const SizedBox(width: 16), // İkon ile metin arasındaki boşluk
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Öğrencinizin ödevi yapıp yapmadığını buradan takip edebilirsiniz',
                    style: context.fonts.smallBody
                        .copyWith(color: context.rTextColors.filledInputForm)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
