import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Passion extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Pashun & Desiyah Page"),
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
              					//backgroundImage: AssetImage('arsenal.jpg'),
              					),
              				title: Text("The Arsenal"),
              				subtitle: Text("Inexplicable.")
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
              					//backgroundImage: AssetImage('bball.jpg'),
              					),
              				title: Text("Basketball"),
              				subtitle: Text("Education is important, but basketball is importanter.")
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
              					//backgroundImage: AssetImage('philosophy.jpg'),
              					),
              				title: Text("Philosophy, abtract thinking"),
              				subtitle: Text("What's the point of this? Why...")
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
              					//backgroundImage: AssetImage('growth.jpg'),
              					),
              				title: Text("Growth"),
              				subtitle: Text("It's in your power to be the best you can, and you choose not to... I'll never understand humans.")
              				),
						),
					),
				],
			),
				floatingActionButton: FloatingActionButton.extended(
						backgroundColor: Colors.blue,
						icon: const Icon(Icons.add),
						label: const Text("Add Pashun"),
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
               hintText: "Type pashun name",
               hintStyle: TextStyle(color: Colors.grey),
             ),
           ),
           SizedBox(height: 10),
            TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.blue),
               ),
               hintText: "Type pashun description",
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
