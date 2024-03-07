import 'category.dart';
import 'course.dart';
import 'student.dart';

void main(List<String> args) {
  List<Course> courses = [
    Course(
      courseName: "Senior Yazılım Geliştirici Yetiştirme Kampı (.NET)",
      courseDescription:
          "Senior Yazılım Geliştirici Yetiştirme Kampımızın takip, döküman ve duyurularını buradan yapacağız.",
      price: "ÜCRETSİZ",
      category: Category.Programlama,
      educatorName: "Engin",
      educatorSurname: "Demirog",
    ),
    Course(
      courseName:
          "(2023) Yazılım Geliştirici Yetiştirme Kampı - Python & Selenium",
      courseDescription:
          "Python & Selenium Yazılım Geliştirici Yetiştirme Kampımızın takip, döküman ve duyurularını buradan yapacağız.",
      price: "ÜCRETSİZ",
      category: Category.Programlama,
      educatorName: "Halit Enes",
      educatorSurname: "Kalaycı",
    ),
  ];

  var student = Student(
    email: "ogrenci@example.com",
    name: "Şule",
    lastName: "Duman",
    course: courses,
  );

  student.displayInfo();
}
