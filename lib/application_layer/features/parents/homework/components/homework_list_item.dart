import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/homework/homework_detail.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/icon_path_enums.dart';

class HomeworkListItem extends StatefulWidget {
  final bool isConfirmed; // Dışarıdan gelecek true veya false değeri
  const HomeworkListItem({Key? key, required this.isConfirmed}) : super(key: key);

  @override
  State<HomeworkListItem> createState() => _HomeworkListItemState();
}

class _HomeworkListItemState extends State<HomeworkListItem> {
  @override
  Widget build(BuildContext context) {
    IconPathEnums selectedIcon = widget.isConfirmed ? IconPathEnums.confirm : IconPathEnums.circleXmark;

    Color iconColor = widget.isConfirmed ? const Color.fromARGB(255, 54, 146, 11) : Colors.red;

    return GestureDetector(
      onTap: () {
        context.navigateTo(const HomeworkDetail());
      },
      child: Container(
        margin: const EdgeInsets.all(7),
        padding: const EdgeInsets.all(11.0),
        decoration: Decoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: Decoration(),
              child: Center(
                child: selectedIcon.widget(
                  color: iconColor,
                  height: 44,
                  width: 44,
                ),
              ),
            ),
            const SizedBox(width: 16), // İkon ile metin arasındaki boşluk
            Expanded(
              child: TextColumn(context),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration Decoration() {
    return BoxDecoration(
      color: const Color.fromARGB(255, 241, 241, 241),
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  Column TextColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sulu Boya Ödevi', style: context.fonts.title.copyWith(color: context.rTextColors.filledInputForm)),
        const SizedBox(
          height: 3,
        ),
        Text('Öğrencinizin aylık değerlendirilmesi tüm detaylarıyla öğretmeninden dinleyin!',
            style: context.fonts.smallBody.copyWith(color: context.rTextColors.filledInputForm)),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Metni sola hizala
              children: [Text('Detayları Göster', style: context.fonts.smallBodyUnderline.copyWith(color: context.rTextColors.error))],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('23.04.2024', style: context.fonts.smallBody.copyWith(color: context.rTextColors.deactiveInput)),
              ],
            ),
          ],
        )
      ],
    );
  }
}
