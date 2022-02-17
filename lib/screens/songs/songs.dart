import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_am_i/services/db.dart';
import 'package:who_am_i/services/dbmodel.dart';
import '../../services/db_controller.dart';


class Songs extends StatelessWidget {

	final TextEditingController songName = TextEditingController();

  final TextEditingController songDesc = TextEditingController();

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
              					//backgroundImage: AssetImage('rfts.jpg'),
              					),
              				title: Text("Reach for the stars - Major Lazer"),
              				subtitle: Text("Reach for the stars, first you got to have a vision. Reach for the highest, if you could see it, you could be it"),
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
           	controller: songName,
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
            	controller: songDesc,
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
             child: Text("Add Song",style: TextStyle(color: Colors.white)),
             onPressed:  () async {
                          final mainModel = MainModel(
                              song_name: songName.text.trim(), 
                              song_description: songDesc.text.trim()
                              );
                          await FirestoreDb.addSong(mainModel);
                          songName.clear();
                          songDesc.clear();
                        },
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
