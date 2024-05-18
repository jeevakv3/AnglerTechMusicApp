import '../allpackages.dart';

class CommonBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MusicListController(), permanent: true);
  }
}
