import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/components/document_link_text.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/icon_path_enums.dart';

class AnnouncementDetailView extends StatefulWidget {
  const AnnouncementDetailView({super.key});

  @override
  State<AnnouncementDetailView> createState() => _AnnouncementDetailViewState();
}

TextStyle myTextStyle = const TextStyle();

IconPathEnums pdfIcon = IconPathEnums.pdf;

class _AnnouncementDetailViewState extends State<AnnouncementDetailView> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.only(top: 14, right: 13, left: 13, bottom: 7),
      child: Container(
        height: context.height / 1.5,
        width: context.width,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(0, 10),
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
            textMethod('Yemek Programı Hakkında'),
            addSpace(10),
            textMethod(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis fringilla faucibus. Praesent a congue neque, aliquet ultrices ipsum. Ut nulla tellus, pharetra quis tempor at, fringilla ullamcorper eros. Pellentesque vel massa vitae libero accumsan consectetur eu ac quam. Aliquam ut orci est. Etiam in mattis turpis. Mauris nec suscipit lacus.In hac habitasse platea dictumst. Morbi vulputate ultrices lacus id facilisis. In quis tortor eget arcu tincidunt aliquet. Integer rhoncus mi ut lobortis porttitor. In nec tortor interdum, posuere mi ut, ultricies orci. Nullam vitae ullamcorper diam, sit amet facilisis tortor. Integer nec ornare magna, nec sodales nisl. Aenean vel purus a urna cursus pretium. Praesent ex risus, rhoncus non scelerisque sed, hendrerit eu mauris. Pellentesque finibus non neque non elementum. Nulla mollis efficitur diam, vitae tempus justo faucibus vitae. Morbi porta dapibus ullamcorper. Etiam ac libero eu tellus pharetra semper. In ac diam facilisis, consequat ipsum et, ullamcorper ipsum.'),
            addSpace(15),
            textMethod('4 Ekim 2023'),
            addSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: textMethod('Emirhan Erel'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [textMethod('Sınıf Öğretmeni')],
            ),
            addSpace(30),
            textMethod('Duyuru Ekleri:'),
            addSpace(5),
            Row(
              children: [
                textMethod('Örnek Çizim'),
                pdfIcon.widget(),
              ],
            ),
            Row(
              children: [
                textMethod('Örnek Çizim'),
                pdfIcon.widget(),
              ],
            ),
          ]),
        ),
      ),
    )));
  }
  Column textColumn(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Yemek Programı Hakkında', style: context.fonts.title.copyWith(color: context.rTextColors.deactiveInput)),
      addSpace(10),
      Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis fringilla faucibus. Praesent a congue neque, aliquet ultrices ipsum. Ut nulla tellus, pharetra quis tempor at, fringilla ullamcorper eros. Pellentesque vel massa vitae libero accumsan consectetur eu ac quam. Aliquam ut orci est. Etiam in mattis turpis. Mauris nec suscipit lacus.In hac habitasse platea dictumst. Morbi vulputate ultrices lacus id facilisis. In quis tortor eget arcu tincidunt aliquet. Integer rhoncus mi ut lobortis porttitor. In nec tortor interdum, posuere mi ut, ultricies orci. Nullam vitae ullamcorper diam, sit amet facilisis tortor. Integer nec ornare magna, nec sodales nisl. Aenean vel purus a urna cursus pretium. Praesent ex risus, rhoncus non scelerisque sed, hendrerit eu mauris. Pellentesque finibus non neque non elementum. Nulla mollis efficitur diam, vitae tempus justo faucibus vitae. Morbi porta dapibus ullamcorper. Etiam ac libero eu tellus pharetra semper. In ac diam facilisis, consequat ipsum et, ullamcorper ipsum.''',
          style: context.fonts.smallBody.copyWith(color: context.rTextColors.filledInputForm)),
      addSpace(15),
      Text("23.04.2024", style: context.fonts.smallBody.copyWith(color: context.rTextColors.filledInputForm)),
      addSpace(30),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "Emirhan Erel",
              style: context.fonts.smallBody.copyWith(color: Colors.black),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Sınıf Öğretmeni",
            style: context.fonts.smallBody.copyWith(color: Colors.black),
          ),
        ],
      ),
      addSpace(30),
      Text(
        'Duyuru Ekleri: ',
        style: context.fonts.smallBody.copyWith(color: context.rTextColors.filledInputForm),
      ),
      addSpace(5),
      const DocumentLinkText(),
      const DocumentLinkText(),
    ]);
  }

}

Text textMethod(text) => Text(text, style: myTextStyle);

SizedBox addSpace(double size) {
  return SizedBox(
    height: size,
  );
}
