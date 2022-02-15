import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_am_i/shared/constants.dart';


class Songs extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Songs Page"),
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
              					backgroundImage: AssetImage('rfts.jpg'),
              					),
              				title: Text("Reach for the stars - Major Lazer"),
              				subtitle: Text("Reach for the stars, first you got to have a vision. Reach for the highest, if you could see it, you could be it"),
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
              					backgroundImage: AssetImage('btm.jpg'),
              					),
              				title: Text("Bigger than me - Big Sean"),
              				subtitle: Text("All I wanna do is make the city proud, yeah. Wishing all the OGs could see me now, now, now, yeah.")
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
              					backgroundImage: AssetImage('wits.jpg'),
              					),
              				title: Text("Written in the stars - Tinie Tempeh"),
              				subtitle: Text("Written in the stars, a million miles away, a message to the man oh... Seasons come and go, but I'll never change, I'm on my way!")
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
              					backgroundImage: AssetImage('btl.jpg'),
              					),
              				title: Text("10,000 reasons - Matt Redman "),
              				subtitle: Text("And on that day when my strength is failling, the end draws near and my time has come. Still, my soul will sing your praise unending. Ten thousand years and then forevermore. ")
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
              					backgroundImage: AssetImage('tb.jpg'),
              					),
              				title: Text("The blessing - Kari Jobe"),
              				subtitle: Text("The Lord bless you and keep you, make his face shine upon you and be gracious to you.")
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
              					backgroundImage: AssetImage('roots.jpg'),
              					),
              				title: Text("Roots - Imagine Dragon"),
              				subtitle: Text("Had to lose my way to know which road to take... I'm going back to my roots")
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
              					backgroundImage: AssetImage('colors.png'),
              					),
              				title: Text("Zombie - Kwesi Arthur"),
              				subtitle: Text("Can't believe say after all these years we no strengthen the bond...")
              				),

						),
					),
				],
			),
				floatingActionButton: FloatingActionButton.extended(
						backgroundColor: Colors.blue,
						icon: const Icon(Icons.add),
						label: const Text("Add Songs"),
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
               hintText: "Type song name",
               hintStyle: TextStyle(color: Colors.grey),
             ),
           ),
           SizedBox(height: 10),
            TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.blue),
               ),
               hintText: "Type song description",
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
