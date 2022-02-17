import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:who_am_i/services/constants.dart';
import 'package:who_am_i/services/dbmodel.dart';

class FirestoreDb {
  static addMovie(TodoModel todomodel) async {
    await firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('movies')
        .add({
      'Movie Name': todomodel.movie_name,
      'Movie Description': todomodel.movie_description,
      'Created On': Timestamp.now(),
    });
  }

  static Stream<List<TodoModel>> todoStream() {
    return firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('movies')
        .snapshots()
        .map((QuerySnapshot query) {
      List<TodoModel> todos = [];
      for (var todo in query.docs) {
        final todoModel =
            TodoModel.fromDocumentSnapshot(documentSnapshot: todo);
        todos.add(todoModel);
      }
      return todos;
    });
  }

  static deleteTodo(String documentId) {
    firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('movies')
        .doc(documentId)
        .delete();
  }
}
