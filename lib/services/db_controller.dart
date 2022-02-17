import 'package:who_am_i/services/db.dart';
import 'package:who_am_i/services/dbmodel.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {
  Rx<List<MainModel>> movieList = Rx<List<MainModel>>([]);
  List<MainModel> get movies => movieList.value;

  @override
  void onReady() {
    movieList.bindStream(FirestoreDb.movieStream());
  }
}

class SongController extends GetxController {
  Rx<List<MainModel>> songList = Rx<List<MainModel>>([]);
  List<MainModel> get songs => songList.value;

  @override
  void onReady() {
    songList.bindStream(FirestoreDb.songStream());
  }
}

class PassionController extends GetxController {
  Rx<List<MainModel>> passionList = Rx<List<MainModel>>([]);
  List<MainModel> get passions => passionList.value;

  @override
  void onReady() {
    passionList.bindStream(FirestoreDb.passionStream());
  }
}
