import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image URL
                ),
                SizedBox(height: 10),
                Text(
                  'Avinash',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '+91-8700056622',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          _createDrawerItem(icon: Icons.home, text: 'Home', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.book, text: 'Book a Pooja', onTap: () => _onItemTap(context), trailing: _buildNewTag()),
          _createDrawerItem(icon: Icons.headset_mic, text: 'Customer Support Chat', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.account_balance_wallet, text: 'Wallet Transactions', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.history, text: 'Order History', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.local_offer, text: 'AstroRemedy', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.article, text: 'Astrology Blog', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.chat, text: 'Chat with Astrologers', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.favorite, text: 'My Following', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.free_breakfast, text: 'Free Services', onTap: () => _onItemTap(context)),
          _createDrawerItem(icon: Icons.settings, text: 'Settings', onTap: () => _onItemTap(context)),
          ListTile(
            title: Text('Version 1.1.291'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.apple),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.android),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.language),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.play_circle_filled),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.facebook),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.photo_camera),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.link),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem({IconData? icon, required String text, GestureTapCallback? onTap, Widget? trailing}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
        ],
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }

  Widget _buildNewTag() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        'NEW',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  void _onItemTap(BuildContext context) {
    Navigator.pop(context);
    // Handle navigation or other actions here
  }
}