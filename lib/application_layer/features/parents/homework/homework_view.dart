import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/homework/components/homework_list_item.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/components/info_text.dart';

class HomeworkView extends StatefulWidget {
  const HomeworkView({super.key});
  @override
  State<HomeworkView> createState() => _HomeworkViewState();
}

class _HomeworkViewState extends State<HomeworkView> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: const [
            HomeworkListItem(isConfirmed: true),
            HomeworkListItem(isConfirmed: true),
            HomeworkListItem(isConfirmed: false),
            HomeworkListItem(isConfirmed: false),
            HomeworkListItem(isConfirmed: false),
            HomeworkListItem(isConfirmed: false),
            InfoText()
          ],
        ),
      ),
    );
  }
}
