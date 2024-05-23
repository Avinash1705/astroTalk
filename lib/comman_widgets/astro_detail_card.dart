import 'package:astrocom/comman_widgets/app_icon.dart';
import 'package:astrocom/comman_widgets/big_text.dart';
import 'package:astrocom/comman_widgets/small_text.dart';
import 'package:astrocom/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class AstroDetailCard extends StatelessWidget {
  String type;
   AstroDetailCard({Key? key,required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      margin: EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
      padding: EdgeInsets.only(top: 20,left: 4,right: 4),
      decoration: BoxDecoration(
          border: Border.all(color:Colors.grey ),
          boxShadow: [
            BoxShadow(
              color: AppColors.buttonBackgroundColor.withOpacity(0.5), //color of shadow
              spreadRadius: 5, //spread radius
              blurRadius: 7, // blur radius
              offset: Offset(0, 2), // changes position of shadow
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
                  child: Image.asset("assets/images/user1.png")),
              SizedBox(
                width: 100,
                child: RatingBar.builder(
                  itemSize: 12,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding:
                  EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SmallText(text: "2502 orders")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Samraagni"),
              SmallText(text: 'Numerlogy, Tarot, Psychic'),
              SmallText(text: 'English, Hindi'),
              SmallText(text: 'Exp: 25 Years'),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 10.0,
                    color: AppColors.greyColor,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Free   ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    TextSpan(
                      text: 'Rs 5/min',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppIcon(
                    iconSize: 20,
                    icon: Icons.check_circle_sharp,
                    iconColor: Colors.green,
                    backgroundColor: Colors.white70,
                  ),
                  Container(
                    width: 80,
                    height: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color:Colors.green ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(14))),
                    child: Center(child: SmallText(text: type)),
                  )
                  // Image.asset("images/check.png")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
