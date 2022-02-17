import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_am_i/screens/movies/movie_list.dart';
import 'package:who_am_i/screens/passions/passions_list.dart';
import 'package:who_am_i/screens/songs/songs_list.dart';
import 'package:who_am_i/services/constants.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        title: Text("Home Page"),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("Logout"),
            onPressed: () async {
              await authController.signOut();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundImage: AssetImage('christian.jpg'), radius: 150),
            SizedBox(height: 20.0),
            Text(
                "Hey, my name is Christian. Clearly I'm bored and have too much time on my hands."),
            Text(
                "Anyways, click on the buttons below to upload your favoirte activites."),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => Get.to(Movies()),
              child: Text('Favorite Movies', textAlign: TextAlign.center),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => Get.to(Songs()),
              child: Text('Favorite Songs'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => Get.to(Passions()),
              child: Text('Favorite Activites'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => Get,
              child: Text('Simple Calculator'),
            ),
          ],
        ),
      ),
    );
  }
}
