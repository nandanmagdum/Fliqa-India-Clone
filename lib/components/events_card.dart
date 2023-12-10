import 'package:flutter/material.dart';

class EventCard{
  static Container C({final image_path, final title, required List<String> s})  => Container(
    // width: screenWidth*0.95,
    height: 530,
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 1),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        ClipRRect(borderRadius: BorderRadius.circular(20) ,child: Image(image: AssetImage(image_path), )),
        SizedBox(height: 10,),
        Text(title, style: TextStyle(fontSize: 25)),
        Divider(color: Colors.black, thickness: 1,),
        SizedBox(height: 10,),
        Flexible(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Text(s[index], textAlign: TextAlign.center,style: TextStyle(fontSize: 18)
                ,);
            },
            itemCount: s.length,),
        ),
        ElevatedButton(onPressed: (){}, child: Text("Know More", style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1C3B47))),
        SizedBox(height: 10,),
      ],
    ),
  );
}