import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_am_i/services/db.dart';

import '../../services/db_controller.dart';

class Movies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("This is the 12th function");
    return GetX<TodoController>(
      init: Get.put<TodoController>(TodoController()),
      builder: (TodoController todoController) {
        return Expanded(
          child: ListView.builder(
            itemCount: todoController.todos.length,
            itemBuilder: (BuildContext context, int index) {
              print(todoController.todos[index].content);
              final _todoModel = todoController.todos[index];
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _todoModel.content,
                          style: TextStyle(
                            fontSize: Get.textTheme.headline6!.fontSize,
                            decoration: _todoModel.isDone
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                      Checkbox(
                        value: _todoModel.isDone,
                        onChanged: (status) {
                          FirestoreDb.updateStatus(
                            status!,
                            _todoModel.documentId,
                          );
                        },
                      ),
                      IconButton(
                        onPressed: () {
                          FirestoreDb.deleteTodo(_todoModel.documentId!);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

    // return GetX<TodoController>(
    //     init: Get.put<TodoController>(TodoController()),
    //     builder: (TodoController todoController) {
    //       return ListView.builder(
    //         itemCount: todoController.todos.length,
    //         itemBuilder: (BuildContext context, int index) {
    //           print("What is my name?");
    //           print(todoController.todos[index].content);
    //           //print(todoController.todos[index].movie_description);
    //           return MovieTile(todoController.todos[index]);
    //         },
    //       );
    //     });