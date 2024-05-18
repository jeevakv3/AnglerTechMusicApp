import 'package:flutter/material.dart';

import '../../../allpackages.dart';

class MusicDetails extends StatelessWidget {
  Results data;
  MusicDetails({required this.data});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.04, left: size.width * 0.2),
              child: Container(
                height: size.height * 0.4,
                width: size.width / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(data.artworkUrl30 != null
                            ? data.artworkUrl30!
                            : data.artworkUrl60 != null
                                ? data.artworkUrl60!
                                : data.artworkUrl100 != null
                                    ? data.artworkUrl100!
                                    : data.artworkUrl600 != null
                                        ? data.artworkUrl600!
                                        : 'assets/home.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 5,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'CollectName : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.collectionName != null
                        ? data.collectionName!
                        : 'WB 100 Colección de 5 Películas: Comedias',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 5,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'ArtistName : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.artistName != null
                        ? data.artistName!
                        : 'Películas',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 5,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'TrackName : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.trackName != null
                        ? data.trackName!
                        : 'No TrackName Found',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 5,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'ReleaseDate : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.releaseDate != null
                        ? data.releaseDate!
                        : 'No ReleaseDate Found',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 5,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'CollectionHdPrice : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.collectionHdPrice != null
                        ? data.collectionHdPrice!.toString()
                        : 'No CollectionHdPrice Found',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 5,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'ShortDiscription : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.shortDescription != null
                        ? data.shortDescription!
                        : 'No ShortDiscription Found',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 5,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'LongDiscription : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.longDescription != null
                        ? data.longDescription!
                        : 'No LongDiscription Found',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 100,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'LongDiscription : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.longDescription != null
                        ? data.longDescription!
                        : 'No LongDiscription Found',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              maxLines: 100,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'PreviewUrl : ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: data.previewUrl != null
                        ? data.previewUrl!
                        : 'No PreviewUrl Found',
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 10,
              color: Colors.brown,
              thickness: 2,
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
                child: Text(
              '***  End ***',
              style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 10,
              color: Colors.brown,
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
