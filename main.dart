import 'package:demo10/Binding/home_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:demo10/Binding/home_binding.dart';
import 'controller/home_controller.dart';


  // Connect Binding to Route
    void main(){
      runApp(MyApp());

    }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Homepage(),
    );
  }
}



class Homepage extends StatelessWidget {
    Homepage({super.key});

    // call into main
    final controller = Get.find<HomeController>();


  @override
  Widget build(BuildContext context) {

        return Scaffold(
          appBar: AppBar(
            title: Text("Binding State"),
          ),

          body: Center(
            child:  Obx(
                ()=> Text(controller.count.toString(), style: TextStyle(fontSize: 25),)
            ),
          ),
          

        );
  }
}

