import 'category.dart';
import 'educator.dart';

class Course extends Educator {
  Course({
    required this.courseName,
    required this.courseDescription,
    required this.price,
    required this.category,
    required super.educatorName,
    required super.educatorSurname,
  }) {}
  String courseName;
  String courseDescription;
  String price;
  Category category;
}
