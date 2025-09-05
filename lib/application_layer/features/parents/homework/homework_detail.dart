import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/components/document_link_text.dart';

import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';

class HomeworkDetail extends StatefulWidget {
  const HomeworkDetail({super.key});

  @override
  State<HomeworkDetail> createState() => _HomeworkDetailState();
}

class _HomeworkDetailState extends State<HomeworkDetail> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              height: 650,
              margin: const EdgeInsets.only(top: 50, left: 15, right: 15),
              padding: const EdgeInsets.all(14.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 23, left: 5),
                child: TextColumn(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column TextColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sulu Boya Ödevi',
            style: context.fonts.title
                .copyWith(color: context.rTextColors.deactiveInput)),
        const SizedBox(
          height: 10,
        ),
        Text(
            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis fringilla faucibus. Praesent a congue neque, aliquet ultrices ipsum. Ut nulla tellus, pharetra quis tempor at, fringilla ullamcorper eros. Pellentesque vel massa vitae libero accumsan consectetur eu ac quam. Aliquam ut orci est. Etiam in mattis turpis. Mauris nec suscipit lacus.In hac habitasse platea dictumst. Morbi vulputate ultrices lacus id facilisis. In quis tortor eget arcu tincidunt aliquet. Integer rhoncus mi ut lobortis porttitor. In nec tortor interdum, posuere mi ut, ultricies orci. Nullam vitae ullamcorper diam, sit amet facilisis tortor. Integer nec ornare magna, nec sodales nisl. Aenean vel purus a urna cursus pretium. Praesent ex risus, rhoncus non scelerisque sed, hendrerit eu mauris. Pellentesque finibus non neque non elementum. Nulla mollis efficitur diam, vitae tempus justo faucibus vitae. Morbi porta dapibus ullamcorper. Etiam ac libero eu tellus pharetra semper. In ac diam facilisis, consequat ipsum et, ullamcorper ipsum.''',
            style: context.fonts.smallBody
                .copyWith(color: context.rTextColors.filledInputForm)),
        const SizedBox(
          height: 20,
        ),
        Text("23.04.2024",
            style: context.fonts.smallBody
                .copyWith(color: context.rTextColors.filledInputForm)),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Emirhan Erel",
            style: context.fonts.smallBody.copyWith(color: Colors.black),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Sınıf Öğretmeni",
            style: context.fonts.smallBody.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Ekler:",
            style: context.fonts.smallBody
                .copyWith(color: context.rTextColors.filledInputForm)),
        SizedBox(
          height: 5,
        ),
        DocumentLinkText(),
        DocumentLinkText(),
      ],
    );
  }
}
