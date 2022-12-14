import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert2/control/login_controller.dart';
import 'package:pert2/pages/home.dart';

class LoginC extends StatelessWidget {
  LoginC({super.key});
  final LoginController loginController = Get.put(LoginController());
  get child => null;
  @override
  Widget build(BuildContext context) {
    final ukuran = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: Color(0xff910D1B),
          body: Obx(
            () => SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: ukuran.width,
                        height: ukuran.height / 2.6,
                        color: Color(0xff910D1B),
                      ),
                      Positioned(
                        bottom: 25,
                        child: Image.asset(
                          'img/lgo.png',
                          width: 160,
                          height: 170,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: ukuran.width,
                        height: 551,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(130),
                              topRight: Radius.circular(130)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Login Now !',
                                style: GoogleFonts.roboto(
                                    fontSize: 24, fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'E-mail',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextField(
                              controller: loginController.email,
                              focusNode: loginController.focusEmail.value,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Email Address",
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Password',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: loginController.password,
                              focusNode: loginController.focusPassword.value,
                              obscureText: !loginController.isVisible.value,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      loginController.isVisible.value =
                                          !loginController.isVisible.value;
                                    },
                                    icon: Icon(loginController.isVisible.value
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined)),
                                hintText: "Password",
                                filled: true,
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: Color(0xff2F37FF),
                                    ),
                                  )),
                            ),
                            Container(
                              width: 400,
                              height: 51,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xffA36067)),
                                  ),
                                  onPressed: () {
                                    loginController.login();
                                  },
                                  child: Text(
                                    'Login',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 350,
                                    height: 51,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xffF0F0F0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                            )),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              'img/googleicon.png',
                                              width: 24,
                                              height: 24,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Login With Google',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff424242)),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    'Don’t Have Account?',
                                    style: GoogleFonts.roboto(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Register Now!',
                                      style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        color: Color(0xff2F37FF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

// 
