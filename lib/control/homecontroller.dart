import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';

class Homecontroller extends GetxController {
  final CarouselController controller = CarouselController();
  var current = 0.obs;
  var imgSlider = ['img/frame1.png', 'img/frame2.png', 'img/frame3.png'];
}
