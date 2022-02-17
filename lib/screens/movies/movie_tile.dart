import 'package:flutter/material.dart';
import 'package:who_am_i/services/dbmodel.dart';

class MovieTile extends StatelessWidget {
  final TodoModel todo;

  MovieTile(this.todo);

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
                    //backgroundImage: AssetImage('lot.jpg'),
                  ),
                  title: Text(todo.movie_name),
                  subtitle: Text(todo.movie_description)),
            ),
          ),
        ],
      ),
    );
  }
}
