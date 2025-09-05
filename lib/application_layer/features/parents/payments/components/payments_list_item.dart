import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';

import '../../../../../tools/enums/icon_path_enums.dart';

class PaymentsListItem extends StatelessWidget {
  const PaymentsListItem({super.key, required this.months, required this.verified});

  final String? months;
  final bool? verified;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10).add(const EdgeInsets.symmetric(horizontal: 10)),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(spreadRadius: 1, blurRadius: 2, offset: Offset(0, 2), color: Colors.black12)]),
      child: Row(
        children: [
          (verified!) ? IconPathEnums.greenVerified.widget() : IconPathEnums.redDenied.widget(),
          const SizedBox(
            width: 10,
          ),
          listItemMiddlePart(context),
          Text(
            "1200₺",
            style: context.fonts.title.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }

  Expanded listItemMiddlePart(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            months!,
            style: context.fonts.title.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Yükleme Tarihi: 02.02.2023",
                style: context.fonts.small.copyWith(color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
