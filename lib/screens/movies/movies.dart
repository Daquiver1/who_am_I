import 'package:flutter/material.dart';


class Movies extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Movies Page"),
				),
			body: Column(
				children: <Widget>[
				Padding(
					padding: const EdgeInsets.all(4.00),
					child: Container(
						color: Colors.blue[50],
						child: ListTile(
							leading: CircleAvatar(
								radius: 25.0,
              					backgroundColor: Colors.brown[100],
              					//backgroundImage: AssetImage('coffee_icon.png'),
              					),
              				title: Text("Legends of Tomrrow"),
              				subtitle: Text("More info")
              				),

						),
					),
				Padding(
					padding: const EdgeInsets.all(4.00),
					child: Container(
						color: Colors.blue[50],
						child: ListTile(
							leading: CircleAvatar(
								radius: 25.0,
              					backgroundColor: Colors.brown[100],
              					//backgroundImage: AssetImage('coffee_icon.png'),
              					),
              				title: Text("Arrow"),
              				subtitle: Text("More info")
              				),

						),
					),
				Padding(
					padding: const EdgeInsets.all(4.00),
					child: Container(
						color: Colors.blue[50],
						child: ListTile(
							leading: CircleAvatar(
								radius: 25.0,
              					backgroundColor: Colors.brown[100],
              					//backgroundImage: AssetImage('coffee_icon.png'),
              					),
              				title: Text("Everybody Hates Chris"),
              				subtitle: Text("More info")
              				),

						),
					),
				Padding(
					padding: const EdgeInsets.all(4.00),
					child: Container(
						color: Colors.blue[50],
						child: ListTile(
							leading: CircleAvatar(
								radius: 25.0,
              					backgroundColor: Colors.brown[100],
              					//backgroundImage: AssetImage('coffee_icon.png'),
              					),
              				title: Text("Gotham"),
              				subtitle: Text("More info")
              				),

						),
					),
				Padding(
					padding: const EdgeInsets.all(4.00),
					child: Container(
						color: Colors.blue[50],
						child: ListTile(
							leading: CircleAvatar(
								radius: 25.0,
              					backgroundColor: Colors.brown[100],
              					//backgroundImage: AssetImage('coffee_icon.png'),
              					),
              				title: Text("The Shawshank Redemption"),
              				subtitle: Text("More info")
              				),

						),
					),
				Padding(
					padding: const EdgeInsets.all(4.00),
					child: Container(
						color: Colors.blue[50],
						child: ListTile(
							leading: CircleAvatar(
								radius: 25.0,
              					backgroundColor: Colors.brown[100],
              					//backgroundImage: AssetImage('coffee_icon.png'),
              					),
              				title: Text("The Tomorrow People"),
              				subtitle: Text("More info")
              				),

						),
					),
				Padding(
					padding: const EdgeInsets.all(4.00),
					child: Container(
						color: Colors.blue[50],
						child: ListTile(
							leading: CircleAvatar(
								radius: 25.0,
              					backgroundColor: Colors.brown[100],
              					//backgroundImage: AssetImage('coffee_icon.png'),
              					),
              				title: Text("Silicon Valley"),
              				subtitle: Text("More info")
              				),

						),
					),
				],
			),
		);
	}
}
