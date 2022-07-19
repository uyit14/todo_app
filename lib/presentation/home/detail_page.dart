import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/extension.dart';
import 'home_controller.dart';

class DetailPage extends GetView<HomeController> {
  const DetailPage({Key? key}) : super(key: key);

  List<dynamic> get _list {
    return controller.list.value ?? [];
  }

  bool get _isLoading {
    return controller.isLoading.value ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final todoType = Get.arguments as TODO_TYPE;
    return Scaffold(
      appBar: AppBar(
        title: Text(todoType.toTitle()),
      ),
      body: Obx(() => Stack(
            children: [
              ListView.builder(
                  itemCount: _list.length,
                  itemBuilder: (context, index) {
                    return Text(_list[index].name);
                  }),
              _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(),
            ],
          )),
    );
  }
}
