import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 16.0),
            UserReviews(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://example.com/srishika.jpg'), // Replace with actual image URL
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Srishika',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Vedic Astrologer', style: TextStyle(fontSize: 16)),
                      Text('English, Hindi, Bhojpuri', style: TextStyle(fontSize: 16)),
                      Text('Exp: 3 Years', style: TextStyle(fontSize: 16)),
                      Text(
                        '₹5/min (₹18/min)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.verified, color: Colors.green),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('24k mins', style: TextStyle(fontSize: 16)),
                Text('151 mins', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Srishika is a Vedic Astrologer in India. She loves to help her clients...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Chat'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Call'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserReviews extends StatelessWidget {
  final List<Map<String, String>> reviews = [
    {
      'user': 'Sushree',
      'review':
      'I just love the way she handles the problem.... ma\'am I respect you and I believe in your words... thank you ma\'am..',
    },
    {
      'user': 'Sushree',
      'review':
      'Ye bhut achhe hae bhut jyada achhe hae. Bilkul ek badi behen ke tarh bat karte hae ye.. thanks you so much ma\'am 🙏.',
    },
    {
      'user': 'Swarnlata',
      'review':
      'After talking to her I am feeling very positive and confident.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(review['user']![0]),
              ),
              title: Text(review['user']!),
              subtitle: Text(review['review']!),
            ),
          );
        },
      ),
    );
  }
}