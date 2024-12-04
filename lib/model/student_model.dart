class StudentModel {
  String? name;
  String? place;
  String? ph;
  String? course;
  int? age;

  StudentModel({
    this.name,
    this.place,
    this.ph,
    this.course,
    this.age,
  });
}

class University {
  String name;
  Location location;
  List<Department> departments;
  int establishedYear;
  List<String> affiliatedColleges;

  University({
    required this.name,
    required this.location,
    required this.departments,
    required this.establishedYear,
    required this.affiliatedColleges,
  });

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
      name: json['name'],
      location: Location.fromJson(json['location']),
      departments: (json['departments'] as List)
          .map((item) => Department.fromJson(item))
          .toList(),
      establishedYear: json['establishedYear'],
      affiliatedColleges: List<String>.from(json['affiliatedColleges']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'location': location.toJson(),
      'departments': departments.map((item) => item.toJson()).toList(),
      'establishedYear': establishedYear,
      'affiliatedColleges': affiliatedColleges,
    };
  }
}

class Location {
  String city;
  String state;
  String country;

  Location({
    required this.city,
    required this.state,
    required this.country,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      city: json['city'],
      state: json['state'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'state': state,
      'country': country,
    };
  }
}

class Department {
  String name;
  String head;
  List<Course> courses;

  Department({
    required this.name,
    required this.head,
    required this.courses,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      name: json['name'],
      head: json['head'],
      courses: (json['courses'] as List)
          .map((item) => Course.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'head': head,
      'courses': courses.map((item) => item.toJson()).toList(),
    };
  }
}

class Course {
  String courseId;
  String courseName;
  int credits;
  Instructor instructor;
  List<Student> students;

  Course({
    required this.courseId,
    required this.courseName,
    required this.credits,
    required this.instructor,
    required this.students,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseId: json['courseId'],
      courseName: json['courseName'],
      credits: json['credits'],
      instructor: Instructor.fromJson(json['instructor']),
      students: (json['students'] as List)
          .map((item) => Student.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'courseId': courseId,
      'courseName': courseName,
      'credits': credits,
      'instructor': instructor.toJson(),
      'students': students.map((item) => item.toJson()).toList(),
    };
  }
}

class Instructor {
  String name;
  String email;

  Instructor({
    required this.name,
    required this.email,
  });

  factory Instructor.fromJson(Map<String, dynamic> json) {
    return Instructor(
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
    };
  }
}

class Student {
  String id;
  String name;
  String email;
  Grades grades;

  Student({
    required this.id,
    required this.name,
    required this.email,
    required this.grades,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      grades: Grades.fromJson(json['grades']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'grades': grades.toJson(),
    };
  }
}

class Grades {
  int assignments;
  int midterm;
  int finalExam;

  Grades({
    required this.assignments,
    required this.midterm,
    required this.finalExam,
  });

  factory Grades.fromJson(Map<String, dynamic> json) {
    return Grades(
      assignments: json['assignments'],
      midterm: json['midterm'],
      finalExam: json['final'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'assignments': assignments,
      'midterm': midterm,
      'final': finalExam,
    };
  }
}
