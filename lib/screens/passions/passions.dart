import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_am_i/services/db.dart';
import 'package:who_am_i/services/dbmodel.dart';
import '../../services/db_controller.dart';

class Passion extends StatelessWidget {

	final TextEditingController passionName = TextEditingController();

  final TextEditingController passionDesc = TextEditingController();

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
              				subtitle: Text("Inexplicable."),
              				// trailing: IconButton(
              				// onPressed: () {
                  //     FirestoreDb.deletePassion(
                  //         _mainModel.documentId!);
                  //   },
                  //   	icon: const Icon(
                  //     Icons.delete,
                  //     color: Colors.blue,
                  //   ),
              				// ),
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
           	controller: passionName,
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
            	controller: passionDesc,
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
             child: Text("Add passion",style: TextStyle(color: Colors.white)),
             onPressed:  () async {
                          final mainModel = MainModel(
                              passion_name: passionName.text.trim(), 
                              passion_description: passionDesc.text.trim()
                              );
                          await FirestoreDb.addPassion(mainModel);
                          passionName.clear();
                          passionDesc.clear();
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
