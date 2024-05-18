import '../../allpackages.dart';

class MusicListController extends GetxController {
  MusicListResponse musicListResponse = MusicListResponse();

  var isLoad = false.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  //   fetchMusicList();
  // }

  Future<void> fetchMusicList() async {
    try {
      isLoading(true, 'musicList');
      var data = await ApiService().getData();
      if (data != null) {
        musicListResponse = MusicListResponse.fromJson(data);
        isLoading(false, 'musicList');
        print(musicListResponse.resultCount);
      }
    } catch (e) {
      isLoading(false, 'musicList');
      print('Api Controller class Exception $e');
    }
  }

  void isLoading(isLoad, type) {
    this.isLoad.value = isLoad;
    update([type]);
  }
}
