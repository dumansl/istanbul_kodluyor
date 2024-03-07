void main(List<String> args) {
  //3.1 degiskenlerle calismak
  print("Merhaba");

  String message = "Selam Sule";
  print(message);

  int birthDate = 1997;
  double rate = 1.15;
  print("Dogum yılı : " + birthDate.toString());
  print("Oran : " + rate.toString());

  // 4.1 sart bloklariyla calismak

  bool isLogin = false;

  if (isLogin == true) {
    print("Anasayfaya gidildi.");
  } else {
    print("Login sayfasına gidildi");
  }

  int score = 45;
  if (score >= 50) {
    print("Geçti");
  } else if (score >= 40) {
    print("Bütünleme");
  } else {
    print("Kaldı");
  }

  String mark = "A";
  switch (mark) {
    case "A":
      {
        print("Süper");
      }
      break;
    case "B":
      {
        print("İyi");
      }
      break;
    case "C":
      {
        print("İdare Eder");
      }
      break;
    case "D":
      {
        print("Kötü");
      }
      break;
    default:
      {
        print("Blinmiyor");
      }
  }

  // 5.1 listelerle calismak

  var urunler = List<dynamic>.filled(5, null);
  urunler[0] = "Laptop";
  urunler[1] = "Mouse";
  urunler[2] = "Keyboard";
  urunler[3] = "Monitor";
  urunler[4] = "Mic";
  //urunler [5]="Speaker";
  print(urunler);
  print(urunler[2]);
  //print(urunler[5]);

  var sehirler = ["Ankara", "İstanbul", "İzmir"];
  print(sehirler);
  sehirler.add("Diyarbakır");
  print(sehirler);

  print(sehirler.where((s) => s.contains("a")));
  print(sehirler.first);

  // 5.2 döngülerle calismak
  for (var i = 1; i <= 10; i = i + 2) {
    print(i);
  }
  var products = ["Laptop", "Mouse", "Keyboard"];
  for (var i = 0; i < products.length; i++) {
    print(products[i]);
  }
  for (var product in products) {
    print(product);
  }

  int sayi = 1;
  while (sayi <= 10) {
    print(sayi);
    sayi++;
  }
  var sayi2 = 10;
  do {
    print("Sayı 2 = " + sayi2.toString());
    sayi2++;
  } while (sayi2 > 1000);

  // 5.4 map yapısıyla calismak

  var dictionary1 = new Map();
  dictionary1["book"] = "kitap";
  dictionary1["little"] = "küçük";

  var dictionary2 = {"kitap": "book", "küçük": "little"};
  dictionary2["büyük"] = "big";

  print(dictionary1);
  print(dictionary2);

  dictionary1.remove("book");
  print(dictionary1);

  for (var key in dictionary2.keys) {
    print(key + " : " + dictionary2[key]!);
  }
  for (var value in dictionary2.values) {
    print(value);
  }
  print(dictionary2.containsKey("kitap"));
  dictionary2.forEach((k, v) => print(k + ": " + v));

  // 6.1 fonksiyonlarla calismak

  selamVer2("Engin");
  selamVer2("Engin");
  selamVer2("Ayşe");
  selamVer2("Engin");
  selamVer2("Engin");

  var hesapSonucu = hesapla(100000, 15);
  print(hesapSonucu);
  test1(sayil: 1, sayi2: 2, sayi3: 3);

  // 7.1 -- 7.3 class yapıları

  var personelManager = PersonelManager();
  personelManager.add();

  var customerManager = CustomerManager();
  var customer = Customer.withInfo("Şule", "Duman");
  customerManager.add(customer);

  var controller = PersonController();
  controller.operation(customer);
}

class PersonController {
  void operation(Person person) {
    print("Inheritance demo : " + person.firstName);
  }
}

class PersonelManager {
  void add() {
    print("Eklendi :");
  }

  void guncelle() {
    print("Güncellendi");
  }

  void sil() {
    print("Silindi");
  }
}

class CustomerManager {
  void add(Customer customer) {
    print("Eklendi : " + customer.firstName);
  }

  void guncelle() {
    print("Güncellendi");
  }

  void sil() {
    print("Silindi");
  }
}

class Customer extends Person {
  Customer() {}

  Customer.withInfo(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
}

class Personel extends Person {
  late int dateOfStart;

  Personel() {}

  Personel.withInfo(String firstName, String lastName, int dateOfStart) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.dateOfStart = dateOfStart;
  }
}

class Person {
  late String firstName;
  late String lastName;
  late String identityNumber;
}

void selamVer() {
  print("Selam");
}

void selamVer2(String kullanici) {
  print("Selam " + kullanici);
}

double hesapla(double krediTutari, double yuzde) {
  var sonuc = krediTutari * yuzde / 100;
  return sonuc;
}

void test1({int? sayil, int? sayi2, int? sayi3}) {
  print(sayil);
  print(sayi2);
  print(sayi3);
}
