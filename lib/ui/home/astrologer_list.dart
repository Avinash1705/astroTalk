import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AstrologerList extends StatelessWidget {
  final List<Map<String, dynamic>> astrologers = [
    {'name': 'Rabani', 'rate': 18, 'image': 'assets/images/user1.png', 'tag': 'Celebrity'},
    {'name': 'Abhaiveer', 'rate': 26, 'image': 'assets/images/user2.png', 'tag': 'Top Choice'},
    {'name': 'Asha02', 'rate': 16, 'image': 'assets/images/user3.png', 'tag': 'Celebrity'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: astrologers.map((astrologer) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(astrologer['image']), // Replace with your image asset
            ),
            title: Text(astrologer['name']),
            subtitle: Text('₹${astrologer['rate']}/min'),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text('Chat'),
            ),
          ),
        );
      }).toList(),
    );
  }
}
