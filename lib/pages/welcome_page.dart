import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touristify/misc/colors.dart';
import 'package:touristify/widgets/app_large_text.dart';
import 'package:touristify/widgets/app_text.dart';
import 'package:touristify/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ super.key });

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "two_travellers_mountain-peak.png",
    "travel_forest_waterfall_black.png",
    "night_mountain_lakes.png",
  ];

  List<WelcomePageTextHeader> texts = [
    WelcomePageTextHeader("Trips", "Mountains", "Mountain hikes give you incredible sense of freedom with endurance test")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "img/midjourney_img/" + images[index]
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: index == 0 ? texts[index].header : "Test"),
                        AppText(text: index == 0 ? texts[index].subtitle : "Test", size: 30),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text: index == 0 ? texts[index].description : "Mountain hikes give you incredible sense of freedom with endurance test",
                            color: AppColors.textColor2,
                          ),
                        ),
                        SizedBox(height: 40,),
                        ResponsiveButton(width: 120,)
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppColors.buttonBackgroundBlack
                                : AppColors.buttonBackgroundBlack.withOpacity(0.3)
                          ),
                        );
                      }),
                    )
                  ],
                )
              ),
            );
      }),
    );
  }
}

class WelcomePageTextHeader {
  String header;
  String subtitle;
  String description;

  WelcomePageTextHeader(this.header, this.subtitle, this.description);
}
