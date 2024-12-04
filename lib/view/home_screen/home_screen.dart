import 'package:data_conversion_july/controller/home_screen_controller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<HomeScreenController>().convertToMode();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Consumer<HomeScreenController>(
                builder: (context, homeScreenState, child) => ListView.builder(
                      itemCount: homeScreenState.studentsList.length,
                      itemBuilder: (context, index) => Container(
                        color: index.isEven ? Colors.grey : Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Name  : ${homeScreenState.studentsList[index].name}"),
                            Text(
                                "Age   : ${homeScreenState.studentsList[index].age}"),
                            Text(
                                "Place : ${homeScreenState.studentsList[index].place}"),
                            Text(
                                "Phone : ${homeScreenState.studentsList[index].ph}"),
                            Text(
                                "Couse : ${homeScreenState.studentsList[index].course}"),
                          ],
                        ),
                      ),
                    ))));
  }
}
