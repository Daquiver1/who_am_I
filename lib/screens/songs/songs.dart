import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_am_i/shared/constants.dart';


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
              				subtitle: Text("Top Tier Series. Constantine stay undefeated.")
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
              				subtitle: Text("The best series I've ever watched. Rewatched all 8 seasons twice. Pretty Bird.")
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
              				subtitle: Text("Funniest series I've ever watched. Chris Rock, kudos.")
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
              				subtitle: Text("How can you not love Gotham? It's perfect! Everything, cast, plot, settings. *Chefs Kiss*")
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
              				subtitle: Text("Mildred recommended this movie to me, good movie. Really good.")
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
              				subtitle: Text("Watched this when I was 12. Been obessed ever since.")
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
              				subtitle: Text("Season 1 of this series is a must watch for all tech student entreprenuers. No cap.")
              				),

						),
					),
				],
			),
				floatingActionButton: FloatingActionButton.extended(
						backgroundColor: Colors.blue,
						icon: const Icon(Icons.add),
						label: const Text("Add Movies"),
						onPressed: () {
							Get.bottomSheet(
								Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
           // TextField for giving some Input
           TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.blue),
               ),
               hintText: "Type movie name",
               hintStyle: TextStyle(color: Colors.grey),
             ),
           ),
           SizedBox(height: 10),
            TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.blue),
               ),
               hintText: "Type movie description",
               hintStyle: TextStyle(color: Colors.grey),
             ),
           ),
            SizedBox(height: 10),
             
           //Button for adding items
           RaisedButton(
             color: Colors.black,
             child: Text("ADD",style: TextStyle(color: Colors.white)),
             onPressed: () => null,
             ),
         ],
                    ),
                  ),
                ),
                elevation: 20.0,
                enableDrag: false,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )
                )

              );
								// thebottomsheet,
								// isDismissible: true);
							},
						),
		);
	}
}
