import 'package:cloud_firestore/cloud_firestore.dart';

class MainModel {
  String? documentId;
  late Timestamp createdOn;
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

  MainModel.fromDocumentSnapshot({required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    createdOn = documentSnapshot["Created on"];
    movie_name = documentSnapshot["Movie name"];
    movie_description = documentSnapshot["Movie_description"];
    song_name = documentSnapshot["Song Name"];
    song_description = documentSnapshot["Song Description"];
    passion_name = documentSnapshot["Passion Name"];
    passion_description = documentSnapshot["Passion Description"];
  }
}
