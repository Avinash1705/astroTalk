import 'package:astrocom/comman_widgets/small_text.dart';
import 'package:astrocom/utils/dimensions.dart';
import 'package:flutter/material.dart';


class LiveImageName extends StatelessWidget {
  int position;
  LiveImageName({super.key,required this.position});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      width: 60,
      margin: EdgeInsets.all(Dimensions.height20/3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff7c94b6),
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              fit: BoxFit.cover,
              image: AssetImage("assets/images/user${position}.png"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Image.asset("assets/images/user${position}.png"),
          ),
          SmallText(
            text: "user${position}",
          )
        ],
      ),
    );
  }
}
