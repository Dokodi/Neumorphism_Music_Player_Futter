import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 80,
            ),

            //Music Title
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GradientText(
                    'DUSK TILL DAWN',
                    colors: const [
                      Color.fromRGBO(0, 35, 105, 1),
                      Colors.black,
                    ],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //Artistes

                  GradientText(
                    'Zayn ft. Sia',
                    colors: const [
                      Color.fromRGBO(0, 35, 105, 1),
                      Colors.black,
                    ],
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                    // textAlign: TextAlign.left,
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  //Sound Device

                  Text(
                    'Dokodi\'s  Airpods',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[300],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            //Row with controls and album art

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 417,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: const Color.fromARGB(255, 156, 211, 255),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(10, 0),
                          spreadRadius: 0,
                          blurRadius: 20,
                          color: Color.fromARGB(255, 144, 184, 217),
                        )
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.replay,
                          size: 30,
                          color: Color.fromARGB(255, 114, 168, 213),
                        ),
                        Icon(
                          Icons.skip_next,
                          size: 30,
                          color: Color.fromARGB(255, 114, 168, 213),
                        ),
                        Icon(
                          Icons.pause,
                          size: 30,
                          color: Color.fromARGB(255, 114, 168, 213),
                        ),
                        Icon(
                          Icons.skip_previous,
                          size: 30,
                          color: Color.fromARGB(255, 114, 168, 213),
                        ),
                        // Icon(Icons.like),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),

                ClipRect(
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: 0.5422,
                    child: Stack(
                      
                      children: [
                        Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 156, 211, 255),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(2, 20),
                                spreadRadius: 10,
                                blurRadius: 20,
                                color: Color.fromARGB(255, 144, 184, 217),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 100,
                          child: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/album_art.png',
                                  ),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ]),
    );
  }
}


// class MyClip extends CustomClipper<Rect> {
//   @override
//   Rect getClip(Size size) {
//     return const Rect.fromLTWH(0, 0, 100, 100);
//   }
  
//   @override
//   bool shouldReclip(oldClipper) {
//     return false;
//   }
// }