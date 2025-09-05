import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/album/components/album_componnet.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/announcement/announcement_detail.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/image_path_enums.dart';

class GalerryView extends StatefulWidget {
  const GalerryView({super.key});

  @override
  State<GalerryView> createState() => _GalerryViewState();
}

class _GalerryViewState extends State<GalerryView> {
  @override
  ImagePathEnums galerryPhotoOne = ImagePathEnums.galerryPhotoOne;
  ImagePathEnums galerryPhotoTwo = ImagePathEnums.galerryPhotoTwo;
  ImagePathEnums galerryPhotoThree = ImagePathEnums.galerryPhotoThree;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addSpace(38),
            Text('Fotoğraflar',
                style: context.fonts.title
                    .copyWith(color: context.rTextColors.deactiveInput)),
            addSpace(10),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque accumsan id odio id porttitor. Proin sodales justo dictum nunc tincidunt semper. ',
                style: context.fonts.smallBody
                    .copyWith(color: context.rTextColors.filledInputForm)),
            addSpace(10),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  CustomAlbumComponent(
                      bool: false,
                      text: 'İzmir Gezisi',
                      photo: ImagePathEnums.galerryPhotoOne),
                  CustomAlbumComponent(
                      bool: false,
                      text: 'İzmir Gezisi',
                      photo: ImagePathEnums.galerryPhotoTwo),
                  CustomAlbumComponent(
                      bool: false,
                      text: 'İzmir Gezisi',
                      photo: ImagePathEnums.galerryPhotoThree)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
