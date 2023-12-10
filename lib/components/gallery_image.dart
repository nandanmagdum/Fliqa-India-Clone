import 'package:flutter/material.dart';

class GalleryImage{
  static Padding addImage({required context,required final image_number}) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            height: 500,
            width: MediaQuery.of(context).size.width,
            image: AssetImage('assets/gallery/' + image_number.toString() + '.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
}