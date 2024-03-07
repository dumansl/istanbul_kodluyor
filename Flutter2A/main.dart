import 'calculator.dart';
import 'customer.dart';
import 'customerType.dart';
import 'environment.dart';
import 'product.dart';
import 'user.dart';

void main() {
  // instance - örnek
  Product product = new Product(name: "Tişört", unitPrice: 50);
  product.displayInfo();

  Product product2 = new Product.empty();
  product2.name = "Pantolon";
  product2.displayInfo();

  Product product3 = new Product.all(name: "Gömlek", stock: 10, unitPrice: 100);
  product3.displayInfo();

  User user =
      User(email: "halit@kodlama.io", name: "Halit", lastName: "Kalaycı");
  user.displayInfo();

  Customer customer = Customer(
      email: "engin@kodlama.io",
      name: "Engin",
      lastName: "Demiroğ",
      customerNo: "153",
      customerType: CustomerType.Indiviual);
  customer.displayInfo();

  print(Environment.API_URL);
  print(Calculator.calculateTax(50));
}

// SDK => Software Dev. Kit
// dönüş_tipi fonksiyon_ismi(parametreler) { // kod bloğu }
// void => dönüş tipi olmayan
void selamla() {
  print("Merhaba");
}

// bir fonksiyon dönüş tipi void değilse, içerisinde değeri return etmelidir.
int topla(int sayi1, int sayi2) {
  int sonuc = sayi1 + sayi2;
  //...
  return sonuc;
}
