import 'dart:ui';

import '../../../allpackages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/home.jpg'),
                colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.3),
                  BlendMode.dstATop,
                ),
                fit: BoxFit.fill)),
        child: Center(
            child: GestureDetector(
          onTap: () {
            Get.to(MusicListView());
          },
          child: Container(
            height: size.height * 0.2,
            width: size.width * 0.3,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                'Tap to Get Music',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
