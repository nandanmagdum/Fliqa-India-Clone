import 'package:fliqa_india/components/divider.dart';
import 'package:fliqa_india/components/gallery_image.dart';

import 'components/events_card.dart';
import 'package:fliqa_india/components/features_section.dart';
import 'package:flutter/material.dart';
import 'package:fliqa_india/components/components.dart';
import 'package:fliqa_india/components/image_carousel.dart';
import 'package:fliqa_india/components/constants.dart';
import 'components/features_section.dart';
import 'components/offers.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final car = MyCarousel();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // app bar
                Components.appbar(context),

                // image carousel
                Container(height: screenHeight*0.8,child: car),

                // why choose us
                Components.Why_choose_us(context),

              // Features of our website
              AppFeatures.feature(image_path: 'assets/camera.png', text: Kconstants.camera),
              AppFeatures.feature(image_path: 'assets/package.png', text: Kconstants.package),
              AppFeatures.feature(image_path: 'assets/certificate.png', text: Kconstants.certificate),
              AppFeatures.feature(image_path: 'assets/award.png', text: Kconstants.award),
              AppFeatures.feature(image_path: 'assets/vision.png', text: Kconstants.vision),
              AppFeatures.feature(image_path: 'assets/settings.png', text: Kconstants.settings),

              // what we offer
              DividerCustom.divider(text: 'What We Offer'),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Text("We offer a wide range of services to your preferences...", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ),

              // events photography graphicsdesign
              EventCard.C(image_path: 'assets/a.jpg', title: 'Events',s: Kconstants.Events),
              EventCard.C(image_path: 'assets/b.png', title: '24*7 PHOTOGRAPHY', s: Kconstants.photo),
              EventCard.C(image_path: 'assets/c.jpg', title: 'GRAPHICS DESIGNING', s: Kconstants.graphic_design),

              // divier Gallery
              DividerCustom.divider(text: 'Gallery'),

              SizedBox(height: 20,),
              // gallery
              GalleryImage.addImage(context: context,image_number: 1),
              GalleryImage.addImage(context: context,image_number: 2),
              GalleryImage.addImage(context: context,image_number: 3),
              GalleryImage.addImage(context: context,image_number: 4),
              GalleryImage.addImage(context: context,image_number: 5),
              GalleryImage.addImage(context: context,image_number: 6),
              GalleryImage.addImage(context: context,image_number: 7),
              GalleryImage.addImage(context: context,image_number: 8),
              GalleryImage.addImage(context: context,image_number: 9),

              // divider Offers
              SizedBox(height: 20,),
              DividerCustom.divider(text: 'Offers'),
              Offers.OfferContainer(context: context, image_number: 1, title: 'WEDDING SHOOT'),
              Offers.OfferContainer(context: context, image_number: 2, title: 'PRE-WEDDING SHOOT'),
              Offers.OfferContainer(context: context, image_number: 3, title: 'BIRTHDAY SHOOT'),
              Offers.OfferContainer(context: context, image_number: 4, title: 'PRODUCT SHOOT'),
              Offers.OfferContainer(context: context, image_number: 5, title: 'UI/UX DESIGN'),

              // real wedding
              SizedBox(height: 20,),
              DividerCustom.divider(text: 'Real Wedding'),
            ],
          ),
        ),
      ),
    );
  }
}
