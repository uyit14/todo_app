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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => controller.navigateToDetail(TODO_TYPE.call),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("To Call"),
                  )),
              ElevatedButton(
                  onPressed: () => controller.navigateToDetail(TODO_TYPE.buy),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("To Buy"),
                  )),
              ElevatedButton(
                  onPressed: () => controller.navigateToDetail(TODO_TYPE.sell),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("To Sell"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
