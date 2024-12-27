import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smgetxversion/presantion/controllers/home_controller.dart';
import '../widgets/item_of_random_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller= Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    _controller.loadRandomUserList();
    _controller.initScrollListener();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  const Text("GetX"),
      ),
      body: GetBuilder<HomeController>(
    builder: (controller) {
      return Stack(
        children: [
          ListView.builder(
            controller: _controller.scrollController,
            itemCount: controller.userList.length,
            itemBuilder: (ctx, index) {
              return itemOfRandomUser(controller.userList[index],index);
            },
          ),
          controller.isLoading
              ? Center(
            child: CircularProgressIndicator(),
          ) : const SizedBox.shrink(),
        ],
      );
    }
    ),
    );
  }
}
