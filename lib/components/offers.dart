import 'package:flutter/material.dart';

class Offers {
  static Container OfferContainer({required BuildContext context, required final image_number, required final title}) => Container(
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xFFD6EDF1),
          // border: Border.all(color: Colors.black, width: 1, ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 310,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Expanded(
                child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image(image: AssetImage('assets/offers/$image_number.jpg'), fit: BoxFit.cover,)),
              ),
            ),
            Text(title, style: TextStyle(fontSize: 16),),
            SizedBox(height: 1,),
          ],
        ),
      );
}
