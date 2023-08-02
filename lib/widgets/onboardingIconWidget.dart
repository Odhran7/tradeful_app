import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/small_text.dart';
import '../utils/Dimensions.dart';
import '../utils/colors.dart';

class OnbaordingIconWidget extends StatelessWidget {
  final String mainTitle;
  final String subtitle;
  final String svgPath;

  const OnbaordingIconWidget(
      {super.key,
      required this.mainTitle,
      required this.subtitle,
      required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: Dimensions.width60,
            right: Dimensions.width60,
            top: Dimensions.height30,
            bottom: Dimensions.height30),
        padding: EdgeInsets.only(
            left: Dimensions.width30,
            right: Dimensions.width30,
            top: Dimensions.height30,
            bottom: Dimensions.height30),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.mainColor, width: 2.0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(text: mainTitle, size: 30),
                SizedBox(height: Dimensions.height15),
                SmallText(text: subtitle, size: 16)
              ],
            ),
            Container(
                child: SvgPicture.asset(
              svgPath,
              height: 75,
              width: 75,
            ))
          ],
        ));
  }
}
