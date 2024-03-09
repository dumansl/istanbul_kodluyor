import 'category.dart';
import 'educator.dart';

class CourseCard extends Educator {
  CourseCard({
    required this.courseImage,
    required this.courseName,
    required this.courseDescription,
    required this.price,
    required this.category,
    required super.educatorName,
    required super.educatorSurname,
  }) {}
  String courseImage;
  String courseName;
  String courseDescription;
  String price;
  Category category;
}
