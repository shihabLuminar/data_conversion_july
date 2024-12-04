import 'package:data_conversion_july/dummy_db.dart';
import 'package:data_conversion_july/model/student_model.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  List<StudentModel> studentsList = [];

  convertToMode() {
    // studentsList = List.generate(
    //   DummyDb.studentsList.length,
    //   (index) => StudentModel(
    //     name: DummyDb.studentsList[index]["name"],
    //     age: DummyDb.studentsList[index]["age"],
    //     place: DummyDb.studentsList[index]["place"],
    //     ph: DummyDb.studentsList[index]["ph"],
    //     course: DummyDb.studentsList[index]["course"],
    //   ),
    // );

    studentsList = DummyDb.studentsList
        .map(
          (element) => StudentModel(
            name: element["name"],
            age: element["age"],
            place: element["place"],
            ph: element["ph"],
            course: element["course"],
          ),
        )
        .toList();
    notifyListeners();
  }
}
