import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:who_am_i/services/constants.dart';
import 'package:who_am_i/services/dbmodel.dart';

class FirestoreDb {
  // Add Movie
  static addMovie(MainModel mainmodel) async {
    await firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('Movies')
        .add({
      'Movie name': mainmodel.movie_name,
      'Movie Description': mainmodel.movie_description,
      'createdon': Timestamp.now(),
    });
  }

  // // Delete Movie
  // static deleteMovie(MainModel mainmodel) async {
  //   await firebaseFirestore
  //       .collection('users')
  //       .doc(auth.currentUser!.uid)
  //       .collection('Movies')
  //       .doc(documentId)
  //       .delete();
  // }

  // Add Song
  static addSong(MainModel mainmodel) async {
    await firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('Songs')
        .add({
      'Song name': mainmodel.song_name,
      'Song Description': mainmodel.song_description,
      'createdon': Timestamp.now(),
    });
  }

  // // Delete Song
  // static deleteSong(MainModel mainmodel) async {
  //   await firebaseFirestore
  //       .collection('users')
  //       .doc(auth.currentUser!.uid)
  //       .collection('Songs')
  //       /.doc(documentId)
  //       .delete();
  // }

  // Add Passion
  static addPassion(MainModel mainmodel) async {
    await firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('Passion')
        .add({
      'Passion name': mainmodel.passion_name,
      'Passion Description': mainmodel.passion_description,
      'createdon': Timestamp.now(),
    });
  }

  // // Delete Passion
  // static deletePassion(MainModel mainmodel) async {
  //   await firebaseFirestore
  //       .collection('users')
  //       .doc(auth.currentUser!.uid)
  //       .collection('Passion')
  //       .doc(documentId)
  //       .delete();
  // }

  // static Stream<List<TodoModel>> todoStream() {
  //   return firebaseFirestore
  //       .collection('users')
  //       .doc(auth.currentUser!.uid)
  //       .collection('Movies')
  //       .snapshots()
  //       .map((QuerySnapshot query) {
  //     List<TodoModel> todos = [];
  //     for (var todo in query.docs) {
  //       final todoModel =
  //           TodoModel.fromDocumentSnapshot(documentSnapshot: todo);
  //       todos.add(todoModel);
  //     }
  //     return todos;
  //   });
  // }

  // static updateStatus(bool isDone, documentId) {
  //   firebaseFirestore
  //       .collection('users')
  //       .doc(auth.currentUser!.uid)
  //       .collection('todos')
  //       .doc(documentId)
  //       .update(
  //     {
  //       'isDone': isDone,
  //     },
  //   );
  // }

  // static deleteTodo(String documentId) {
  //   firebaseFirestore
  //       .collection('users')
  //       .doc(auth.currentUser!.uid)
  //       .collection('todos')
  //       .doc(documentId)
  //       .delete();
  // }
}
