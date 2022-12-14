import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class Lgin extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    final ukuran = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff910D1B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: ukuran.width,
                  height: ukuran.height / 2.2,
                  color: Color(0xff910D1B),
                ),
                Positioned(
                  bottom: 25,
                  child: Image.asset(
                    "img/.png",
                    width: 160,
                    height: 170,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 400,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: ukuran.width,
                        height: ukuran.height / 1.3,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(200),
                              topRight: Radius.circular(200)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



// Padding(
//                   padding: const EdgeInsets.all(30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Center(
//                         child: Text(
//                           'Login Now !',
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         'Email',
//                         style: TextStyle(fontSize: 21),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15.0)),
//                             borderSide: BorderSide.none,
//                           ),
//                           hintText: "Email Address",
//                           filled: true,
//                         ),
//                       ),
//                       Text(
//                         'Password',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15.0)),
//                             borderSide: BorderSide.none,
//                           ),
//                           hintText: "Password",
//                           filled: true,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),