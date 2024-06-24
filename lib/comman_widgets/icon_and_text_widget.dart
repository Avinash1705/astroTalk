import 'package:astrocom/comman_widgets/small_text.dart';
import 'package:astrocom/utils/dimensions.dart';
import 'package:flutter/material.dart';


class IconAndTextWidget extends StatelessWidget {
  IconData iconData;
  String iconName;

  IconAndTextWidget(
      {super.key, required this.iconData, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Icon(iconData, color: Colors.grey),
          SizedBox(width: Dimensions.width5),
          SmallText(text: iconName)
        ],
      ),
    );
  }
}
