import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Container(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("To Call"))
            ],
          ),
        ),
      ),
    );
  }
}
