import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:nasa_project/network_manager.dart';

class ImageryList extends StatelessWidget {
  final List<Imagery> imageryList;
  ImageryList({Key key, this.imageryList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Image.network(imageryList[index].getPhoto());
      },
      itemCount: imageryList.length,
    );
  }
}
