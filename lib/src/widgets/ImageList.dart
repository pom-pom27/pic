import 'package:flutter/material.dart';
import 'package:pic/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList({Key key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) => Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Column(
          children: [
            Image.network(images[index].url),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                images[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
