import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DinoReads',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DINO Community'),
        backgroundColor: Colors.blue.shade800, // Adjust the color to match the screenshot
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Friends',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildListItem('SeunghanRiize', '../lib/assets/Seunghan.jpg', true),
                _buildListItem('SungchanRiize', '../lib/assets/Sungchan.jpg', true),
                _buildListItem('ShotaroRiize', '../lib/assets/Shotaro.jpg', true),
                _buildListItem('SoheeRiize', '../lib/assets/Sohee.jpg', true),
                _buildListItem('EunseokRiize', '../lib/assets/Eunseok.jpg', true),
                _buildListItem('WonbinRiize', '../lib/assets/Wonbin.jpg', true),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'DinoSearch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'DinoGoals',
          ),
        ],
        // Add callback methods and other navigation bar options
      ),
    );
  }

  Widget _buildListItem(String name, String imagePath, bool isOnline) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(name),
      trailing: Icon(isOnline ? Icons.add_circle_outline : Icons.remove_circle_outline),
      onTap: () {
        // Handle the tap if necessary
      },
    );
  }
}
