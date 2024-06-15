import 'package:astrocom/ui/home/live_images_page.dart';
import 'package:astrocom/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../comman_widgets/AppDrawer.dart';
import 'SectionHeader.dart';
import 'astrologer_list.dart';
import 'blog_list.dart';
import 'order_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(AppConstants.cookies, style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.account_balance_wallet, color: Colors.black),
          SizedBox(width: 8),
          Icon(Icons.message, color: Colors.black),
          SizedBox(width: 8),
          Icon(Icons.person, color: Colors.black),
          SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Search bar
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: 'Search astrologers, astromall products',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 16),
          // Top icons
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _buildTopIcon(Icons.wb_sunny, 'Daily Horoscope'),
              _buildTopIcon(Icons.insert_chart, 'Free Kundli'),
              _buildTopIcon(Icons.favorite, 'Kundli Matching'),
              _buildTopIcon(Icons.article, 'Astrology Blog'),
            ],
          ),
          SizedBox(height: 16),
          // Banner
          Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text('₹5/min only', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Chat Now'),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Live Astrologers
          Text('Live Astrologers', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return LiveImageName(position: (index+1));
                }),
          ),
          // SizedBox(height: 16),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       _buildAstrologerCard('Indie', 'CA'),
          //       _buildAstrologerCard('SushmasS', ''),
          //       _buildAstrologerCard('Jasmin', ''),
          //       _buildAstrologerCard('Yy', ''),
          //     ],
          //   ),
          // ),
          SizedBox(height: 16),
          SectionHeader(title: "My Orders"),
          OrderCard(),
          SectionHeader(title: "Astrologers"),
          AstrologerList(),
          SectionHeader(title: "Latest from blog"),
          BlogList(),
          SizedBox(height: 16),
          // Bottom buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.chat),
                  label: Text('Chat with Astrologer'),
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.yellow),
                ),
              ),
              Flexible(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                  label: Text('Call with Astrologer'),
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.yellow),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }

  Widget _buildTopIcon(IconData iconData, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 40, color: Colors.black),
        SizedBox(height: 8),
        Flexible(child: Text(label, textAlign: TextAlign.center)),
      ],
    );
  }

  Widget _buildAstrologerCard(String name, String country) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image URL
          ),
          SizedBox(height: 8),
          Text(name),
          if (country.isNotEmpty) Text(country),
        ],
      ),
    );
  }
}