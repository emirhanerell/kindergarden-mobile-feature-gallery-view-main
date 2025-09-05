import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImagePathEnums {
  logo('assets/images/logo.png'),
  iconWhiteEffect('assets/images/icon_white_effect.png'),
  iconWhite('assets/images/icon_white.png'),
  ss1('assets/images/screenshots/ss1_en.png'),
  ss2('assets/images/screenshots/ss2_en.png'),
  ss3('assets/images/screenshots/ss3_en.png'),
  ss4('assets/images/screenshots/ss4_en.png'),
  ss5('assets/images/screenshots/ss5_en.png'),
  albumPhotoOne('assets/images/album_photo_one.png'),
  albumPhotoTwo('assets/images/album_photo_two.png'),
  albumPhotoThree('assets/images/album_photo_three.png'),
  galerryPhotoThree('assets/images/photos_three.png'),
  galerryPhotoTwo('assets/images/photos_two.png'),
  galerryPhotoOne('assets/images/photos.png'),
  darkAddition('assets/images/dark_addition.png');

  final String path;

  const ImagePathEnums(this.path);
}

extension ImagePathEnumsExtension on ImagePathEnums {
  String get path => this.path;
  Widget widget({double? width, double? height}) => this.path.contains('.svg')
      ? SvgPicture.asset(this.path)
      : Image.asset(this.path, width: width, height: height);
}
