import 'customerType.dart';
import 'user.dart';

// subclass extends superclass
class Customer extends User {
  Customer(
      {required super.email,
      required super.name,
      required super.lastName,
      required this.customerNo,
      required this.customerType}) {}
  // this => classın kendisi
  // super => extend ettiğim classı
  late String customerNo;
  final CustomerType customerType;
  static String variableName = "Merhaba";
}
// Inheritance