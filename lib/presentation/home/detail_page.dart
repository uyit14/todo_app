import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class DetailPage extends GetView<HomeController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoType = Get.arguments;
    controller.callApi(todoType);
    return Obx(() => Stack(
      children: [
        ListView.builder(itemBuilder: (context, index){
          return Text("");
    })
      ],
    ));
  }
}
