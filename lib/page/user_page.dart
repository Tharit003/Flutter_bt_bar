import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: "My Flutter App",
      home: Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(167, 245, 7, 7),
                    width: 4.0,
                  ),
                ),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1618388690807431168/UI-ZJb4w_400x400.jpg",
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Tharit Panyaruean',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Student',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const Divider(
                height: 60.0,
                color: Colors.white54,
              ),

              const Center(child: SizedBox(height: 16)),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('tarit@email.com'),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('+66-0999999'),
              ),


              const Divider(
                height: 60.0,
                color: Colors.white54,
              ),



              const SizedBox(height: 16),
              const Text(
                'Introduce Myself:',
                style: TextStyle(
                  fontFamily: 'Tektur',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'my name is Tharit Panyaruean, and I am a secondary education student at Western Michigan University with a focus in science. I grew up in a family of teachers and know that being a high school science teacher is my calling.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Tektur',
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}