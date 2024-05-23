import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../comman_widgets/big_text.dart';
import '../../comman_widgets/small_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height140 + Dimensions.height45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 120,
              margin: EdgeInsets.only(
                  top: 10, bottom: 10, right: 10, left: 10),
              padding:
              EdgeInsets.only(top: 20, left: 4, right: 4),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.buttonBackgroundColor
                          .withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(
                          0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    )
                  ],
                  borderRadius:
                  BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Image.asset(
                              "assets/images/user2.png")),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Samraagni"),
                      SmallText(text: '30 Mar 2024'),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  // shadowColor: Colors.orangeAccent
                                ),
                                onPressed: () {},
                                child: SmallText(
                                  text: "View Chat",
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: SmallText(
                                  text: "Chat Again",
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
