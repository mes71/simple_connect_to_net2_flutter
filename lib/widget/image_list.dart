import 'package:flutter/material.dart';
import 'package:simple_connect_to_net2/model/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> list;

  const ImageList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (ctx, index) {
          return buildImages(list[index]);
        });
  }

  Widget buildImages(ImageModel imageModel) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(imageModel.url.toString()),
          )
        ),
        Positioned(
            bottom: 0.6,
            right: 1,
            left: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                imageModel.title.toString(),
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ))
      ],
    );
  }
}
