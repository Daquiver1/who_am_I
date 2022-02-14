import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.lightBlue[200],
			appBar: AppBar(
				title: Text("Home Page")),
				body: Center(
					child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					crossAxisAlignment: CrossAxisAlignment.center,
					children: [
					CircleAvatar(
						backgroundImage: AssetImage('christian.jpg'),
						radius: 150
					),
					SizedBox(height: 20.0),
					Text("Hey, My name is Christian and this app is to a basic introduction to who I am."),
					Text(" Click on the buttons below to find out my favorite activites."),
					SizedBox(height: 20.0),
					ElevatedButton(
	                onPressed: () => null,
	                child: Text(
	                	'Favorite Movies',
	                	textAlign: TextAlign.center),
	              ),
					SizedBox(height: 20.0),
					ElevatedButton(
	                onPressed: () => null,
	                child: Text('Favorite Songs'),
	              ),
					SizedBox(height: 20.0),
					ElevatedButton(
	                onPressed: () => null,
	                child: Text('Favorite Activites'),
	              ),
					SizedBox(height: 20.0),
					ElevatedButton(
	                onPressed: () => null,
	                child: Text('Simple Calculator'),
	              ),
					
					],

				),
			),
		);
	}
}
