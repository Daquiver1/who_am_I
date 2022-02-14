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
              					backgroundImage: AssetImage('lot.jpg'),
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
              					backgroundImage: AssetImage('arrow.jpg'),
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
              					backgroundImage: AssetImage('ehc.jpg'),
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
              					backgroundImage: AssetImage('gotham.jpg'),
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
              					backgroundImage: AssetImage('tsr.jpg'),
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
              					backgroundImage: AssetImage('ttp.jpg'),
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
              					backgroundImage: AssetImage('tsv.jpg'),
              					),
              				title: Text("Silicon Valley"),
              				subtitle: Text("More info")
              				),

						),
					),
				],
			),
				floatingActionButton: FloatingActionButton.extended(
						backgroundColor: Colors.blue,
						icon: const Icon(Icons.add),
						label: const Text("Add Movies"),
						onPressed: () => null,
						),
		);
	}
}
