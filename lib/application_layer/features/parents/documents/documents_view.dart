import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';


import 'components/document_list_item.dart';

class DocumentsView extends StatefulWidget {
  const DocumentsView({super.key});

  @override
  State<DocumentsView> createState() => _DocumentsViewState();
}

class _DocumentsViewState extends State<DocumentsView> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
        child: Scaffold(
      body: ListView(shrinkWrap: true, children: const [
        DocumentListItem(),
        DocumentListItem(),
        DocumentListItem(),
        DocumentListItem(),
        DocumentListItem(),
        DocumentListItem(),
      ]),
    ));
  }
}


