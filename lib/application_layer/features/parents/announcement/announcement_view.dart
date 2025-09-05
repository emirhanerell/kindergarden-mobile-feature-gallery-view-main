import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/announcement/components/announcement_component.dart';

class AnnouncementView extends StatefulWidget {
  const AnnouncementView({super.key});

  @override
  State<AnnouncementView> createState() => _AnnouncementViewState();
}

class _AnnouncementViewState extends State<AnnouncementView> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
        child: Scaffold(
            body: ListView(
      shrinkWrap: true,
      children: const [
        CustomAnnouncementComponent(),
        CustomAnnouncementComponent(),
        CustomAnnouncementComponent(),
        CustomAnnouncementComponent(),
        CustomAnnouncementComponent(),
        CustomAnnouncementComponent(),
        CustomAnnouncementComponent(),
      ],
    )));
  }
}
