import 'package:astrocom/comman_widgets/AppDrawer.dart';
import 'package:astrocom/comman_widgets/pooja_card.dart';
import 'package:astrocom/comman_widgets/small_text.dart';
import 'package:astrocom/ui/pooja/pooja_top_filter.dart';
import 'package:astrocom/utils/app_colors.dart';
import 'package:astrocom/utils/dimensions.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


// class PoojaPage extends StatelessWidget {
//   const PoojaPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(title: SmallText(text: "Book a Pooja")),
//         drawer: AppDrawer(),
//         body: Container(
//           // decoration: BoxDecoration(
//           //   image: DecorationImage(
//           //     image: AssetImage("assets/images/img1.jpeg")
//           //   )
//           // ),
//           child: Column(
//             children: [
//               Container(color: AppColors.buttonBackgroundColor,height: Dimensions.height100,child: PoojaTopFilter()),
//               Expanded(child: ListView.builder(itemCount: 7,itemBuilder: (context,index)=> PoojaCard())),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class PoojaPage extends StatelessWidget {
  final List<String> carouselImages = [
    "assets/images/remedy_house.png",
    "assets/images/remedy_pooja.png",
    "assets/images/remedy_spell.png",
    "assets/images/remedy_house.png",
  ];

  final List<Map<String, String>> remedyCategories = [
    {'name': 'VIP E-Pooja', 'image': 'assets/images/pooja_cart.jpg', 'tag': 'MUST TRY'},
    {'name': 'Relationship', 'image': 'assets/images/relationship_cart.png', 'tag': ''},
    {'name': 'Spell', 'image': 'assets/images/spell_cart.png', 'tag': ''},
    {'name': 'Reiki Healing', 'image': 'assets/images/healing_cart.jpg', 'tag': ''},
    {'name': 'Evil Eye Removal (Buri Nazar)', 'image': 'assets/images/pooja_cart.jpg', 'tag': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AstroRemedy')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CarouselSlider(
            //   options: CarouselOptions(
            //     height: 200.0,
            //     autoPlay: true,
            //     enlargeCenterPage: true,
            //   ),
            //   items: carouselImages.map((imagePath) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //           width: MediaQuery.of(context).size.width,
            //           margin: EdgeInsets.symmetric(horizontal: 5.0),
            //           decoration: BoxDecoration(
            //             color: Colors.amber,
            //           ),
            //           child: Image.asset(imagePath, fit: BoxFit.cover),
            //         );
            //       },
            //     );
            //   }).toList(),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: remedyCategories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (context, index) {
                  return RemedyCard(
                    name: remedyCategories[index]['name']!,
                    imagePath: remedyCategories[index]['image']!,
                    tag: remedyCategories[index]['tag']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RemedyCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String tag;

  RemedyCard({required this.name, required this.imagePath, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.contain,
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black54,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        if (tag.isNotEmpty)
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              color: Colors.red,
              child: Text(
                tag,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
