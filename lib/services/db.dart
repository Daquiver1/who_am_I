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
      'Movie Name': mainmodel.movie_name,
      'Movie Description': mainmodel.movie_description,
      'Created On': Timestamp.now(),
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
      'Song Name': mainmodel.song_name,
      'Song Description': mainmodel.song_description,
      'Created On': Timestamp.now(),
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
      'Passion Name': mainmodel.passion_name,
      'Passion Description': mainmodel.passion_description,
      'Created On': Timestamp.now(),
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

  // Streams

  static Stream<List<MainModel>> movieStream() {
    return firebaseFirestore
        // The pathway
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('Movies')
        .snapshots()
        .map((QuerySnapshot query) {
      // QuerySnapshot contins all the instances stored
      List<MainModel> movies = [];
      for (var movie in query.docs) {
        final mainModel =
            MainModel.fromDocumentSnapshot(documentSnapshot: movie);
        movies.add(mainModel);
      }
      print("Movies stored Sucessfully");
      return movies;
    });
  }

  static Stream<List<MainModel>> songStream() {
    return firebaseFirestore
        // The pathway
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('Songs')
        .snapshots()
        .map((QuerySnapshot query) {
      // QuerySnapshot contins all the instances stored
      List<MainModel> songs = [];
      for (var song in query.docs) {
        final mainModel =
            MainModel.fromDocumentSnapshot(documentSnapshot: song);
        songs.add(mainModel);
      }
      print("Songs stored Sucessfully");
      return songs;
    });
  }

  static Stream<List<MainModel>> passionStream() {
    return firebaseFirestore
        // The pathway
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('Passion')
        .snapshots()
        .map((QuerySnapshot query) {
      // QuerySnapshot contins all the instances stored
      List<MainModel> passions = [];
      for (var passion in query.docs) {
        final mainModel =
            MainModel.fromDocumentSnapshot(documentSnapshot: passion);
        passions.add(mainModel);
      }
      print("Passions stored Sucessfully");
      return passions;
    });
  }
}
