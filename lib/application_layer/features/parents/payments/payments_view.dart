import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/payments/components/payments_info_text.dart';

import 'components/payments_list_item.dart';

class PaymentsView extends StatefulWidget {
  const PaymentsView({super.key});

  @override
  State<PaymentsView> createState() => _PaymentsViewState();
}

class _PaymentsViewState extends State<PaymentsView> {
  @override
  Widget build(BuildContext context) {
    return LoadingView(
        child: Scaffold(
      body: ListView(shrinkWrap: true, children: const [
        PaymentsInfoText(),
        PaymentsListItem(
          months: "Ocak",
          verified: true,
        ),
        PaymentsListItem(
          months: "Şubat",
          verified: true,
        ),
        PaymentsListItem(
          months: "Mart",
          verified: true,
        ),
        PaymentsListItem(
          months: "Nisan",
          verified: false,
        ),
        PaymentsListItem(
          months: "Mayıs",
          verified: false,
        ),
        PaymentsListItem(
          months: "Haziran",
          verified: false,
        ),
      ]),
    ));
  }
}
