import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';

class PaymentsInfoText extends StatelessWidget {
  const PaymentsInfoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Aidat Ödemeleri",
          style: context.fonts.title.copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque accumsan id odio id porttitor. Proin sodales justo dictum nunc tincidunt semper. ",
          style: context.fonts.smallBody.copyWith(color: Colors.black),
        ),
      ]),
    );
  }
}
