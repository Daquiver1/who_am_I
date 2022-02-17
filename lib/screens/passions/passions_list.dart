import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_am_i/screens/passions/passions_tile.dart';
import 'package:who_am_i/services/db.dart';
import 'package:who_am_i/services/dbmodel.dart';

import '../../services/db_controller.dart';

class Passions extends StatelessWidget {
  final TextEditingController passionName = TextEditingController();
  final TextEditingController passionDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetX<PassionController>(
        init: Get.put<PassionController>(PassionController()),
        builder: (PassionController passionController) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Songs Page"),
            ),
            body: ListView.builder(
              itemCount: passionController.passions.length,
              itemBuilder: (BuildContext context, int index) {
                print("What is my name?");
                print(passionController.passions[index].movie_name);
                //print(todoController.todos[index].movie_description);
                return PassionTile(passionController.passions[index]);
              },
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
                                controller: passionName,
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
                                controller: passionDesc,
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
                                child: Text("Add Songs",
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () async {
                                  final mainModel = MainModel(
                                      song_name: passionName.text.trim(),
                                      song_description:
                                          passionDesc.text.trim());
                                  await FirestoreDb.addMovie(mainModel);
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
                      )));
                }),
          );
        });
  }
}
