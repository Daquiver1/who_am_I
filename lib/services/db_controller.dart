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
