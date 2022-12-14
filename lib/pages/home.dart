import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert2/control/homecontroller.dart';
import 'package:get/get.dart';
import 'package:pert2/control/item.dart';

class Home extends StatelessWidget {
  final Homecontroller homeController = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning,',
              style: GoogleFonts.roboto(
                fontSize: 15,
                color: Color(0xff000000),
              ),
            ),
            Text(
              'Diah Anjeng',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000)),
            ),
            Row(
              children: [
                Image.asset(
                  'img/Location.png',
                  width: 15,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Tangerang, Banten',
                  style: GoogleFonts.roboto(
                      fontSize: 13, color: Color(0xff000000)),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                splashColor: Color.fromARGB(255, 255, 245, 245),
                onTap: () {},
                child: Image.asset(
                  'img/search.png',
                  width: 44,
                ),
              )),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: [
                CarouselSlider.builder(
                  itemCount: homeController.imgSlider.length,
                  options: CarouselOptions(
                      height: 175,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 7),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 2000),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.95,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        homeController.current.value = index;
                      }),
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        homeController.imgSlider[index],
                        width: size.width,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: homeController.imgSlider.map((img) {
                    int index = homeController.imgSlider.indexOf(img);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: homeController.current.value == index
                            ? const Color.fromRGBO(0, 0, 0, 0.9)
                            : const Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 47,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'img/framebtn1.png',
                      width: 60,
                    ),
                    Image.asset(
                      'img/framebtn2.png',
                      width: 60,
                    ),
                    Image.asset(
                      'img/framebtn3.png',
                      width: 60,
                    ),
                    Image.asset(
                      'img/framebtn4.png',
                      width: 60,
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Voucher',
                      style: GoogleFonts.roboto(
                        color: Color(0xff262626),
                      ),
                    ),
                    Text(
                      'Kategori',
                      style: GoogleFonts.roboto(
                        color: Color(0xff262626),
                      ),
                    ),
                    Text(
                      'Terdekat',
                      style: GoogleFonts.roboto(
                        color: Color(0xff262626),
                      ),
                    ),
                    Text(
                      'Terlaris',
                      style: GoogleFonts.roboto(
                        color: Color(0xff262626),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Menu',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff262626)),
                ),
                SizedBox(
                  height: 21,
                ),
                Column(
                  children: [
                    CardList(
                        imageurl: 'img/burger1menu.png',
                        title: 'BigMac Beef',
                        price: 'Rp. 25.000',
                        imageurl2: 'img/burger2menu.png',
                        title2: 'BigMac Beef X',
                        price2: 'Rp. 25.000'),
                    SizedBox(
                      height: 12,
                    ),
                    CardList(
                        imageurl: 'img/burger3menu.png',
                        title: 'PaMer 5',
                        price: 'Rp. 102.000',
                        imageurl2: 'img/burger4menu.png',
                        title2: 'PaMer 7',
                        price2: 'Rp. 150.750'),
                    SizedBox(
                      height: 12,
                    ),
                    CardList(
                        imageurl: 'img/burger5menu.png',
                        title: 'PaNas 2 w Rice',
                        price: 'Rp. 48.500',
                        imageurl2: 'img/burger6menu.png',
                        title2: 'Nasi Uduk',
                        price2: 'Rp. 20.000'),
                    SizedBox(
                      height: 12,
                    ),
                    CardList(
                        imageurl: 'img/burger7menu.png',
                        title: 'McNuggets S',
                        price: 'Rp. 39.500',
                        imageurl2: 'img/burger8menu.png',
                        title2: 'PaNas Spesial',
                        price2: 'Rp. 45.000'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 100,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xff910D11),
        unselectedItemColor: Color(0xff910D1B),
        showUnselectedLabels: true,
      ),
    );
  }
}
