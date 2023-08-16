import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/homeowner/homeowner_dashboard/view_quotes_page.dart';
import 'package:tradeful_app/pages/app/homeowner/request_job/homeowner_request_job_page.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_widget.dart';
import 'package:tradeful_app/widgets/small_text.dart';
import 'package:tradeful_app/widgets/star_widget.dart';

class ViewProfileHomeOwnerPage extends StatelessWidget {
  const ViewProfileHomeOwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: 'assets/images/profile_icon.jpeg'),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width30,
            right: Dimensions.width30,
          ),
          padding: EdgeInsets.only(
            top: Dimensions.height15,
            bottom: Dimensions.height15,
            left: Dimensions.width30,
            right: Dimensions.width30,
          ),
          child: Column(
            children: [
              _topPart(),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height30,
                    bottom: Dimensions.height30,
                    left: Dimensions.width30,
                    right: Dimensions.width30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.offsetWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.plumbing_rounded,
                              color: Colors.black, size: 28),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Row(children: [
                                SmallText(text: "Joined: ", bold: true, size: 17),
                                SizedBox(width: 2),
                                SmallText(text: "12/08/2023", size: 14),
                              ]),
                              Row(children: [
                                SmallText(
                                    text: "Profession: ", bold: true, size: 17),
                                SizedBox(width: 2),
                                SmallText(text: "Plumber", size: 14),
                              ]),
                            ],
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.only(
                            top: Dimensions.height30,
                            bottom: Dimensions.height30,
                            left: Dimensions.width30,
                            right: Dimensions.width30,
                          ),
                          margin: EdgeInsets.only(
                            top: Dimensions.height30,
                            bottom: Dimensions.height30,
                            left: Dimensions.width15,
                            right: Dimensions.width15,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: AppColors.mainColor, width: 4.0)
                                  ),
                                  child: BigText(text: "5.0", size: 35, bold: true)),
                              SizedBox(
                                height: Dimensions.height15,
                              ),
                              SmallText(text: "122 Reviews", size: 16),
                              SizedBox(
                                height: 2,
                              ),
                              SmallText(text: "155 Orders Completed", size: 16),
                              SizedBox(
                                height: 10,
                              ),
                              StarRowWidget(size: 15, text: "Professionalism: "),
                              SizedBox(
                                height: 10,
                              ),
                              StarRowWidget(size: 15, text: "Timescale: "),
                              SizedBox(
                                height: 10,
                              ),
                              StarRowWidget(size: 15, text: "Value for Money: "),
                            ],
                          )),
                      Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.only(
                            top: Dimensions.height30,
                            bottom: Dimensions.height30,
                            left: Dimensions.width30,
                            right: Dimensions.width30,
                          ),
                          margin: EdgeInsets.only(
                            top: Dimensions.height30,
                            bottom: Dimensions.height30,
                            left: Dimensions.width15,
                            right: Dimensions.width15,
                          ),
                          child: Column(
                            children: [
                              BigText(text: "Payments", size: 25, bold: true),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.receipt),
                                    SizedBox(width: 4),
                                    Expanded(
                                      child: SmallText(
                                          text:
                                              "This Tradesman accepts card payments.",
                                          size: 10),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  )),
                  
            ],
          ),
        ),
        
      ),
      bottomNavigationBar: MainAppFooterWidget(
        needsBack: true,
        page: HomeOwnerViewQuotesPage(),
      ),
    );
  }
}

// Widget is for the top part of the card view page

class _topPart extends StatelessWidget {
  const _topPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width30,
          right: Dimensions.width30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.offsetWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/Angel.jpg',
                height: 80,
                width: 80,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(text: "Joe Sheehan", size: 15, bold: true),
                SizedBox(
                  height: Dimensions.height15,
                ),
                StarRowWidget(text: ""),
              ],
            )
          ],
        ));
  }
}
