import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:flutter/material.dart';

enum PaddingEnums {
  authMargin(0.08),
  topBarHeight(0.08);

  final double factor;

  const PaddingEnums(this.factor);
}

extension PaddingEnumsExtension on PaddingEnums {
  double get factor => this.factor;
  EdgeInsets horizontal(BuildContext context) => EdgeInsets.symmetric(horizontal: context.width * this.factor);
  EdgeInsets vertical(BuildContext context) => EdgeInsets.symmetric(vertical: context.height * this.factor);
}
