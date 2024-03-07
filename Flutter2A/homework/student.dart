import 'course.dart';

class Student {
  Student(
      {required this.email,
      required this.name,
      required this.lastName,
      this.course}) {}

  String email;
  String name;
  String lastName;
  List<Course>? course;

  void displayInfo() {
    print("$email\n$name $lastName\nKurslar: ");
    course?.forEach(
      (c) {
        print(
            "${c.courseName}\n${c.courseDescription}\nEğitmen: ${c.educatorName} ${c.educatorSurname}");
      },
    );
  }
}
