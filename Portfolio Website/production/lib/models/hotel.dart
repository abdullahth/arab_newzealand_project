import 'package:flutter/cupertino.dart';
import 'package:production/preferences/enums/assets.dart';
import 'package:get/get.dart';

class Hotel {
  String name, bio;
  Assets image;
  double price;

  Hotel({
    required this.name,
    required this.bio,
    required this.image,
    required this.price,
  });

  static List<Hotel> hotels = [
    Hotel(
        name: 'cordis_hotel'.tr,
        bio: 'cordis_brief'.tr,
        image: Assets.cordisHotel,
        price: 270),
    Hotel(
        name: 'hilton_hotel'.tr,
        bio: 'hilton_brief'.tr,
        image: Assets.hiltonHotel,
        price: 290),
    Hotel(
        name: 'novotel_hotel'.tr,
        bio: 'novotel_brief'.tr,
        image: Assets.novotelHotel,
        price: 100),
    Hotel(
        name: 'sofitel_hotel'.tr,
        bio: 'sofitel_brief'.tr,
        image: Assets.sofitelHotel,
        price: 390),
  ];
}
