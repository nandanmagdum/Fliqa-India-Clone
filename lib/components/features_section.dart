import 'package:flutter/material.dart';

class AppFeatures {
  static feature({required final image_path, required final text }) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Flexible(
            child: Image(
              height: 100,
              width: 100,
              image: AssetImage(
                image_path,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              children: [
                Text(text,textAlign: TextAlign.start, style: TextStyle(fontSize: 14),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
