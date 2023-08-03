import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';
import 'small_text.dart';

class AppColumn extends StatelessWidget {
  final String name;
  final String profileImage;
  final String rating;
  final String location;
  final String numComments;
  final String tradeType;

  const AppColumn({
    super.key,
    required this.name,
    required this.profileImage,
    required this.rating,
    required this.location,
    required this.numComments,
    required this.tradeType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.width15, right: Dimensions.height15, bottom: Dimensions.height30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width15,
                    right: Dimensions.width15),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    profileImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              BigText(
                text: name,
                size: 26,
                color: AppColors.mainColor,
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Row(
            children: [
              Wrap(
                  children: List.generate(
                      5,
                      (index) => Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ))),
              SizedBox(width: Dimensions.width15),
              SmallText(
                text: rating,
              ),
              SizedBox(
                width: Dimensions.width15,
              ),
              SmallText(text: numComments),
              SizedBox(
                width: Dimensions.width15,
              ),
              SmallText(text: "Comments"),
            ],
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconAndTextWidget(
                icon: Icons.handyman,
                text: tradeType,
                iconColor: AppColors.mainColor,
              ),
              IconAndTextWidget(
                icon: Icons.location_on,
                text: location,
                iconColor: AppColors.mainColor,
              ),
              IconAndTextWidget(
                icon: Icons.verified,
                text: "Verified",
                iconColor: AppColors.verifiedGreen,
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.height15,
          )
        ],
      ),
    );
  }
}
