import 'package:flutter/material.dart';

class Components {
  static Container appbar(BuildContext context) => Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage('assets/main_logo.png'),
            ),
            Icon(Icons.menu),
          ],
        ),
      );
  static Container Why_choose_us(BuildContext context)
  {
    String why_us = "Fliqalndia is one of the leading creative platforms in India where you can get everything under one roof. We provide 24*7 Photography services., whether it could be wedding photography or a destination shoot. We also provide you with a wide range of graphic design services, full-day photography, music video shoot and many more. You can book a free consultation today to see how passionately our teams work. Checkout our lists of services.";
    return Container(
        // height: MediaQuery.of(context).size.height*0.7,
        width: MediaQuery.of(context).size.width*0.8,
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50),),
          color: Color(0xFFD6EDF1),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Text("Why Choose Us", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(why_us, style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
              ),
            ],
          ),
        )
    );
  }
}
