import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/announcement/announcement_detail.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/icon_path_enums.dart';

class CustomAnnouncementComponent extends StatefulWidget {
  const CustomAnnouncementComponent({super.key});

  @override
  State<CustomAnnouncementComponent> createState() => _CustomAnnouncementComponentState();
}

class _CustomAnnouncementComponentState extends State<CustomAnnouncementComponent> {
  IconPathEnums announcementIcon = IconPathEnums.announcement;
  TextStyle myTextStyle = const TextStyle(fontSize: 10);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7, right: 13, left: 13, bottom: 7),
      child: Center(
        child: GestureDetector(
          onTap: () {
            context.navigateTo(const AnnouncementDetailView());
          },
          child: Container(
            height: context.height / 8,
            width: context.width,
            decoration: boxDecoration(),
            child: Row(
              children: [
                announcementIcon.widget(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        textMethod('Yeni Toplantı Tarihi'),
                        textMethod('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis fringilla faucibus.'),
                        addSpace(10),
                        Row(
                          children: [textMethod('Detayları Göster'), const Spacer(), textMethod('05.07.2023')],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        boxShadow(),
      ],
    );
  }

  BoxShadow boxShadow() {
    return BoxShadow(
      color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
      spreadRadius: 10,
      blurRadius: 10,
      offset: const Offset(0, 10),
    );
  }

  SizedBox addSpace(double size) {
    return SizedBox(
      height: size,
    );
  }

  Text textMethod(text) => Text(text, style: myTextStyle);
}
