import 'package:astrocom/comman_widgets/icon_and_text_widget.dart';
import 'package:flutter/material.dart';

class PoojaTopFilter extends StatelessWidget {
  const PoojaTopFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconName = [
      "All",
      "Top Poojas",
      "Wealth",
      "Love",
      "Education",
      "Career",
    ];
    var iconData = [
      Icons.all_out,
      Icons.map,
      Icons.gpp_good,
      Icons.timeline,
      Icons.airline_stops,
      Icons.money_off_outlined,
    ];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => IconAndTextWidget(
            iconData: iconData[index], iconName: iconName[index]));
  }
}
