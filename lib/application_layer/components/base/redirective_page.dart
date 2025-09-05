import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/home/home_view.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';

class RedirectivePage extends StatefulWidget {
  const RedirectivePage({
    Key? key,
    /* required this.currentTab,
    required this.selectedTabItem,
    required this.navigatorKeys, */
  }) : super(key: key);

  @override
  State<RedirectivePage> createState() => _RedirectivePageState();
}

class _RedirectivePageState extends State<RedirectivePage> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: context.themeColors.background,
        body: const HomeView(),
      ),
    );
  }
}
