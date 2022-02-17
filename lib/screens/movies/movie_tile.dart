import 'package:flutter/material.dart';
import 'package:who_am_i/services/db.dart';
import 'package:who_am_i/services/dbmodel.dart';

class MovieTile extends StatelessWidget {
  final MainModel movie;
  MovieTile(this.movie);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.00),
      child: Container(
        color: Colors.blue[50],
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[100],
            backgroundImage: AssetImage('vv.jpg'),
          ),
          title: Text(movie.movie_name.toString()),
          subtitle: Text(movie.movie_description.toString()),
          trailing: IconButton(
            onPressed: () {
              FirestoreDb.deletePassion(movie.documentId!);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
