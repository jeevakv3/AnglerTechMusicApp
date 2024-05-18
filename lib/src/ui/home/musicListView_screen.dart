import '../../../allpackages.dart';

class MusicListView extends StatelessWidget {
  MusicListView({Key? key}) : super(key: key);

  String imageUrl =
      'https://static.toiimg.com/thumb/msid-108611582,imgsize-25998,width-400,resizemode-4/108611582.jpg';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final controller = Get.find<MusicListController>();
    controller.fetchMusicList();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Music List',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: GetBuilder<MusicListController>(
          id: 'musicList',
          builder: (_) {
            return controller.isLoad.value == true
                ? SizedBox(
                    height: size.height,
                    width: size.width,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : controller.musicListResponse != null &&
                        controller.musicListResponse.results!.length > 0
                    ? ListView.builder(
                        itemCount: controller.musicListResponse.results!.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          var data =
                              controller.musicListResponse.results![index];
                          return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: InkWell(
                                onTap: () {
                                  Get.to(MusicDetails(
                                    data: data,
                                  ));
                                },
                                child: Card(
                                  elevation: 1,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Container(
                                    width: size.width,
                                    padding: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 6.0,
                                        right: 8.0,
                                        left: 0.0),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 40,
                                        backgroundImage: NetworkImage(data
                                                    .artworkUrl30 !=
                                                null
                                            ? data.artworkUrl30!
                                            : data.artworkUrl60 != null
                                                ? data.artworkUrl60!
                                                : data.artworkUrl100 != null
                                                    ? data.artworkUrl100!
                                                    : data.artworkUrl600 != null
                                                        ? data.artworkUrl600!
                                                        : 'assets/home.jpg'),
                                        backgroundColor: Colors.brown,
                                      ),
                                      title: Text(
                                        data.collectionName != null
                                            ? data.collectionName!
                                            : 'WB 100 Colección de 5 Películas: Comedias',
                                        maxLines: 3,
                                        style: const TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        data.artistName != null
                                            ? data.artistName!
                                            : 'Películas',
                                        style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                ),
                              ));
                        })
                    : SizedBox(
                        height: size.height,
                        width: size.width,
                        child: const Center(
                          child: Text('No Data Found'),
                        ),
                      );
          }),
    );
  }
}
