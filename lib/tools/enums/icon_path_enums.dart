import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum IconPathEnums {
  eye('eye.svg'),
  eyeOpen('eye_open.svg'),
  xMarkCircle('x_mark_circle.svg'),
  xMark('x_mark.svg'),
  arrowLeft('arrow_left.svg'),
  noConnection('no_connection.svg'),
  bolt('bolt.svg'),
  download('download.svg'),
  circleExclamation('circle_exclamation.svg'),
  circleQuestion('circle_question.svg'),
  circleXmark('circle_x_mark.svg'),
  greenVerified('green_verified.svg'),
  redDenied('red_denied.svg'),
  announcement('announcement.svg'),
  pdf('pdf.svg'),
  circleX('x.svg'),
  confirm('confirm.svg'),
  circleCheck('circle_check.svg'),
  cancel('cancel.svg'),
  info('info.svg'),
  acrobat('acrobat.svg'),
  documentPdf('document_pdf.svg'),
  // HomeView feature icons
  notification('notification.svg'),
  report('report.svg'),
  medicine('medicine.svg'),
  program('program.svg'),
  students('students.svg'),
  food('food.svg'),
  document('document.svg'),
  homework('homework.svg'),
  attendance('attendance.svg'),
  generalStatus('general_status.svg'),
  gallery('gallery.svg'),
  // Profile and settings
  profile('profile.svg'),
  settings('settings.svg');

  final String _path;

  const IconPathEnums(this._path);
}

extension IconPathEnumsExtension on IconPathEnums {
  String get path => 'assets/icons/$_path';
  // ignore: deprecated_member_use
  Widget widget({Color? color, double? width, double? height}) =>
      _path.contains('.svg')
          // ignore: deprecated_member_use
          ? SvgPicture.asset(path,
              color: color, width: width, height: height, fit: BoxFit.fill)
          : Image.asset(path,
              color: color, height: height, width: width, fit: BoxFit.fill);
}
