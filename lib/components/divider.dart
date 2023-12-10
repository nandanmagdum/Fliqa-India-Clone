import 'package:flutter/material.dart';

class DividerCustom{
  static Row divider({required final text}) => Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Divider(
            color: Colors.grey,
            thickness: 1,
            height: 20,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Text(text, style: TextStyle(fontSize: 30),),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Divider(
            color: Colors.grey,
            thickness: 1,
            height: 20,
          ),
        ),
      ),
    ],
  );
}