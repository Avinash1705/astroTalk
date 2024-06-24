import 'package:flutter/material.dart';

import '../../comman_widgets/pooja_card.dart';
// import 'package:talk/common/pooja_card.dart';

class PoojaBody extends StatelessWidget {
  const PoojaBody({Key? key}) : super(key: key);

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
        itemBuilder: (context, index) =>  PoojaCard()
    );
    return Container();
  }
}
