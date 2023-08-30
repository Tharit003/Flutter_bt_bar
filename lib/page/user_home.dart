import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(237, 245, 165, 238),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Icon(
              Icons.search,
              size: 40,
              color: Color.fromARGB(255, 5, 5, 248),
            ),
          )
        ],
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 17, 0, 0),
          size: 40,
        ),
        backgroundColor: Color.fromARGB(255, 236, 134, 134),
        title: const Text('My Profile'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is\nmy homepage",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            Image.network(
              "https://pbs.twimg.com/profile_images/1618388690807431168/UI-ZJb4w_400x400.jpg",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}