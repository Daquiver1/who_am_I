import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:who_am_i/services/constants.dart';
import 'package:who_am_i/services/dbmodel.dart';

class FirestoreDb {
  static addTodo(TodoModel todomodel) async {
    await firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('todos')
        .add({
      'content': todomodel.content,
      'createdon': Timestamp.now(),
      'isDone': false,
    });
  }

  static Stream<List<TodoModel>> todoStream() {
    return firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('todos')
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

  static updateStatus(bool isDone, documentId) {
    firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('todos')
        .doc(documentId)
        .update(
      {
        'isDone': isDone,
      },
    );
  }

  static deleteTodo(String documentId) {
    firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('todos')
        .doc(documentId)
        .delete();
  }
}

// class FirestoreDb {
//   static addMovie(TodoModel todomodel) async {
//     await firebaseFirestore
//         .collection('users')
//         .doc(auth.currentUser!.uid)
//         .collection('movies')
//         .add({
//       'Movie Name': todomodel.movie_name,
//       'Movie Description': todomodel.movie_description,
//       'Created On': Timestamp.now(),
//     });
//   }

//   static Stream<List<TodoModel>> todoStream() {
//     return firebaseFirestore
//         .collection('users')
//         .doc(auth.currentUser!.uid)
//         .collection('movies')
//         .snapshots()
//         .map((QuerySnapshot query) {
//       List<TodoModel> todos = [];
//       for (var todo in query.docs) {
//         final todoModel =
//             TodoModel.fromDocumentSnapshot(documentSnapshot: todo);
//         todos.add(todoModel);
//       }
//       return todos;
//     });
//   }

//   static deleteTodo(String documentId) {
//     firebaseFirestore
//         .collection('users')
//         .doc(auth.currentUser!.uid)
//         .collection('movies')
//         .doc(documentId)
//         .delete();
//   }
// }
