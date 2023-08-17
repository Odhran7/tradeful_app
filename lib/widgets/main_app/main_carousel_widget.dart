import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/tradespeople.dart';
import '../../models/tradetypeModel.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import '../icon_and_text.dart';

class MainCarouselWidget extends StatefulWidget {
  const MainCarouselWidget({Key? key}) : super(key: key);

  @override
  State<MainCarouselWidget> createState() => _MainCarouselWidgetState();
}

class _MainCarouselWidgetState extends State<MainCarouselWidget> {
  PageController pageController = PageController(viewportFraction: .85);
  var _currPageValue = 0.0;
  double _height = 150;
  double _scaleFactor = 0.8;

  // Mock Backend

  // This is for the homeowner to see the specific trades
  List<Tradetype> tradeTypes = [
    Tradetype(
        'Electrician',
        'assets/images/electrician_icon.svg',
        '105',
        '200',
        ['Install fixtures', 'Broken Freezer', 'Install heater'],
        Icons.electrical_services),
    Tradetype('Plumber', 'assets/images/plumber_icon.svg', '56', '153',
        ['Leak', 'Clogged Drain', 'Install Fixtures'], Icons.plumbing),
    Tradetype('Carpenter', 'assets/images/carpenter_icon.svg', '48', '100',
        ['Custom build', 'Repairs', 'Internal Fittings'], Icons.construction),
    Tradetype('Welder', 'assets/images/welder_icon.svg', '12', '255',
        ['Gates', 'Farm yards', 'Commercial'], Icons.build),
    Tradetype('Photographer', 'assets/images/photographer_icon.svg', '23',
        '244', ['Wedding', 'Portrait', 'Commercial'], Icons.camera_alt),
  ];

  // This is to showcase the reccomended tradespeople to homeowners

  List<TradesPerson> recommendedTradesPeople = [
    TradesPerson('John Smith', 'assets/images/electrician_profile1.jpeg', '4.5',
        'Dublin', '120', 'Electrician'),
    TradesPerson('Alice Johnson', 'assets/images/plumber_profile1.jpeg', '4.7',
        'Dublin', '56', 'Plumber'),
    TradesPerson('Bob Williams', 'assets/images/carpenter_profile1.jpg', '4.2',
        'Dublin', '48', 'Carpenter'),
    TradesPerson('Charlie Brown', 'assets/images/welder_profile1.jpeg', '4.8',
        'Dublin', '12', 'Welder'),
    TradesPerson('David Davis', 'assets/images/photographer_profile1.jpg',
        '4.9', 'Dublin', '23', 'Photographer'),
    TradesPerson('Emily Clark', 'assets/images/electrician_profile2.jpeg',
        '4.3', 'Dublin', '105', 'Electrician'),
    TradesPerson('Frank Adams', 'assets/images/plumber_profile2.jpg', '4.6',
        'Dublin', '56', 'Plumber'),
    TradesPerson('Grace Thompson', 'assets/images/carpenter_profile2.jpg',
        '4.4', 'Malahide', '48', 'Carpenter'),
    TradesPerson('Henry Hall', 'assets/images/welder_profile2.jpeg', '4.7',
        'Swords', '12', 'Welder'),
    TradesPerson('Ivy Wilson', 'assets/images/photographer_profile2.jpeg',
        '4.5', 'Dalkey', '23', 'Photographer'),
  ];

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          BigText(text: "What do you need?", size: 40, bold: true),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height60,
              bottom: Dimensions.height60,
            ),
            height: 400,
            width: 400,
            child: PageView.builder(
              controller: pageController,
              itemCount: tradeTypes.length,
              itemBuilder: (context, position) {
                return _buildPageItem(position, tradeTypes[position]);
              },
            ),
          ),
          DotsIndicator(
            dotsCount: tradeTypes.isEmpty ? 1 : tradeTypes.length,
            position: _currPageValue.floor(),
            decorator: DotsDecorator(
              activeColor: AppColors.buttonColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          SizedBox(height: Dimensions.height30),

          // Reccomended Tradespeople

          Container(
            margin: EdgeInsets.only(left: Dimensions.width30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BigText(text: "Recommended"),
                SizedBox(width: Dimensions.width15),
                Container(
                  margin: const EdgeInsets.only(bottom: 3),
                  child: BigText(text: ".", color: AppColors.mainColor),
                ),
                SizedBox(width: Dimensions.width15),
                Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: SmallText(text: "Tradespeople near you"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: recommendedTradesPeople.length,
            itemBuilder: (context, position) {
              return _buildRecommendedItem(
                  position, recommendedTradesPeople[position]);
            },
          ),
        ],
      ),
    );
  }

  // Top Rated Tradesmen
  Widget _buildPageItem(int index, Tradetype tradeType) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(children: [
        GestureDetector(
          onTap: () {
            // TODO: Handle tap event
          },
          child: Container(
              padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width30,
                right: Dimensions.width30,
              ),
              height: 350,
              margin: EdgeInsets.only(
                  left: Dimensions.width15, right: Dimensions.width15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven
                    ? AppColors.complementaryWhite1
                    : AppColors.complementaryWhite2,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Align(
                    alignment: Alignment(0, -0.5),
                    child: Icon(tradeType.icon,
                        color: AppColors.buttonColor,
                        size: 300.0),
                  ))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.textColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  left: Dimensions.width15,
                  right: Dimensions.width15),
              child: BigText(text: tradeType.tradeType),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildRecommendedItem(
      int position, TradesPerson recommendedTradesPeople) {
    return GestureDetector(
      onTap: () {
        // Handle tap event
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.textColor,
          border: Border.all(color: AppColors.buttonColor, width: 2.0),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.only(
            left: Dimensions.width15,
            right: Dimensions.width15,
            top: Dimensions.height15,
            bottom: Dimensions.height15),
        margin: EdgeInsets.only(
            left: Dimensions.width15,
            right: Dimensions.width15,
            bottom: Dimensions.height15),
        child: Row(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white38,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(recommendedTradesPeople.image))),
            ),
            Expanded(
              child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.width15, right: Dimensions.width15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(
                              text: recommendedTradesPeople.name,
                              size: 25,
                              bold: true),
                          SizedBox(height: Dimensions.height15),
                          SizedBox(height: Dimensions.height15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconAndTextWidget(
                                icon: Icons.handyman,
                                text: recommendedTradesPeople.tradeType,
                                iconColor: AppColors.buttonColor,
                                size: 10,
                              ),
                              IconAndTextWidget(
                                  icon: Icons.location_on,
                                  text: recommendedTradesPeople.location,
                                  iconColor: AppColors.buttonColor,
                                  size: 10),
                              IconAndTextWidget(
                                icon: Icons.verified,
                                text: "",
                                iconColor: AppColors.buttonColor,
                                size: 12,
                              ),
                            ],
                          )
                        ],
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
