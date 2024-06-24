import 'package:astrocom/comman_widgets/AppDrawer.dart';
import 'package:astrocom/comman_widgets/astro_detail_card.dart';
import 'package:astrocom/comman_widgets/small_text.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: SmallText(text: "Call with Astologer")),
        drawer: AppDrawer(),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return AstroDetailCard(type: 'Call');
            }),
      ),
    );
  }
}
