import 'package:cloud_firestore/cloud_firestore.dart';

class MainModel {
  String? documentId;
  late Timestamp created_on;
  late String? movie_name;
  late String? movie_description;
  late String? song_name;
  late String? song_description;
  late String? passion_name;
  late String? passion_description;

  MainModel({
    this.movie_name,
    this.movie_description,
    this.song_name,
    this.song_description,
    this.passion_name,
    this.passion_description,
  });

  MainModel.fromMovieDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    created_on = documentSnapshot["Created On"];
    movie_name = documentSnapshot["Movie Name"];
    movie_description = documentSnapshot["Movie Description"];
  }

  MainModel.fromSongDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    created_on = documentSnapshot["Created On"];
    song_name = documentSnapshot["Song Name"];
    song_description = documentSnapshot["Song Description"];
  }

  MainModel.fromPassionDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    created_on = documentSnapshot["Created On"];
    passion_name = documentSnapshot["Passion Name"];
    passion_description = documentSnapshot["Passion Description"];
  }
}
