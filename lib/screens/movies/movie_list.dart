import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_am_i/screens/movies/movie_tile.dart';
import 'package:who_am_i/services/db.dart';
import 'package:who_am_i/services/dbmodel.dart';
import '../../services/db_controller.dart';

class Movies extends StatelessWidget {
  final TextEditingController movieName = TextEditingController();

  final TextEditingController movieDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetX<TodoController>(
        init: Get.put<TodoController>(TodoController()),
        builder: (TodoController todoController) {
          return Expanded(
            child: ListView.builder(
              itemCount: todoController.todos.length,
              itemBuilder: (BuildContext context, int index) {
                print(todoController.todos[index].movie_name);
                print(todoController.todos[index].movie_description);
                return MovieTile(todoController.todos[index]);
              },
            ),
          );
          floatingActionButton:
          FloatingActionButton.extended(
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
                            controller: movieName,
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
                            controller: movieDesc,
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
                            child: Text("Add Movies",
                                style: TextStyle(color: Colors.white)),
                            onPressed: () async {
                              final todoModel = TodoModel(
                                  movie_name: movieName.text.trim(),
                                  movie_description: movieDesc.text.trim());
                              await FirestoreDb.addMovie(todoModel);
                              movieName.clear();
                              movieDesc.clear();
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
              // thebottomsheet,
              // isDismissible: true);
            },
          );
        });
  }
}
