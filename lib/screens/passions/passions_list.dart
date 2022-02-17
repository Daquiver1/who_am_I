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
              title: Text("Passions Page"),
            ),
            body: ListView.builder(
              itemCount: passionController.passions.length,
              itemBuilder: (BuildContext context, int index) {
                print(passionController.passions[index].passion_name);
                //print(todoController.todos[index].movie_description);
                return PassionTile(passionController.passions[index]);
              },
            ),
            floatingActionButton: FloatingActionButton.extended(
                backgroundColor: Colors.blue,
                icon: const Icon(Icons.add),
                label: const Text("Add Passion"),
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
                                  hintText: "Type passion name",
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
                                  hintText: "Type passion description",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(height: 10),

                              //Button for adding items
                              RaisedButton(
                                color: Colors.black,
                                child: Text("Add Passion",
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () async {
                                  final mainModel = MainModel(
                                      passion_name: passionName.text.trim(),
                                      passion_description:
                                          passionDesc.text.trim());
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
                      )));
                }),
          );
        });
  }
}
