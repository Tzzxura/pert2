import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardList extends StatelessWidget {
  String imageurl;
  String title;
  String price;
  String imageurl2;
  String title2;
  String price2;
  CardList(
      {required this.imageurl,
      required this.title,
      required this.price,
      required this.imageurl2,
      required this.title2,
      required this.price2});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 178,
          width: 178,
          decoration: BoxDecoration(
            color: Color(0xffFFEFD2),
            borderRadius: BorderRadius.circular(12.3),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 7,
              ),
              Image.asset(
                imageurl,
                width: 120,
                height: 57,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff910D1B),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                price,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff434343),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                height: 30,
                width: 94,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff910D1B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Tambah',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Container(
          height: 178,
          width: 178,
          decoration: BoxDecoration(
            color: Color(0xffFFEFD2),
            borderRadius: BorderRadius.circular(12.3),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 7,
              ),
              Image.asset(
                imageurl2,
                width: 120,
                height: 57,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title2,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff910D1B),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                price2,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff434343),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                height: 30,
                width: 94,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff910D1B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Tambah',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
