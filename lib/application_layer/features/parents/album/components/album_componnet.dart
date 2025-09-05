import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/album/galerry_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/announcement/announcement_detail.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/image_path_enums.dart';

class CustomAlbumComponent extends StatefulWidget {
  CustomAlbumComponent(
      {super.key, required this.bool, required this.text, required this.photo});
  var bool = true;
  var text = '';
  ImagePathEnums photo;

  @override
  State<CustomAlbumComponent> createState() => _CustomAlbumComponentState();
}



class _CustomAlbumComponentState extends State<CustomAlbumComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.bool) {
          context.navigateTo(const GalerryView());
        } else {
          print('Resmi büyült');
        }
      },
      child: Stack(
        children: [
          widget.photo
              .widget(width: context.width, height: context.height / 3.5),
          Positioned(
            top: context.height / 4.7,
            left: context.width / 1.5,
            child: Text(widget.text,
                style: context.fonts.smallBody.copyWith(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
