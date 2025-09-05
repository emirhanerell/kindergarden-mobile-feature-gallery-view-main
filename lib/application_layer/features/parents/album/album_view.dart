import 'package:flutter/material.dart';
import 'package:kindergarden_mobile/application_layer/features/loading/loading_view.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/album/components/album_componnet.dart';
import 'package:kindergarden_mobile/application_layer/features/parents/announcement/announcement_detail.dart';
import 'package:kindergarden_mobile/service_layer/extensions/context_extention.dart';
import 'package:kindergarden_mobile/tools/enums/image_path_enums.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  ImagePathEnums albumPhotoOne = ImagePathEnums.albumPhotoOne;
  ImagePathEnums albumPhotoTwo = ImagePathEnums.albumPhotoTwo;
  ImagePathEnums albumPhotoThree = ImagePathEnums.albumPhotoThree;
  

  ImagePathEnums darkAddition = ImagePathEnums.darkAddition;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addSpace(38),
            Text('Albümler',
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
                    bool: true,
                    text: 'İzmir Gezisi',
                    photo: ImagePathEnums.albumPhotoOne,
                  ),
                  CustomAlbumComponent(
                      bool: true,
                      text: 'Kapodokya Gezisi',
                      photo: ImagePathEnums.albumPhotoTwo),
                  CustomAlbumComponent(
                      bool: true,
                      text: '29 Ekim Kutlaması',
                      photo: ImagePathEnums.albumPhotoThree)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
