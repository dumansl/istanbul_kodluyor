void main() {
  // Programing Concepts

  //Değişkenler - Variables
  //Döngüler - Loops
  //String
  print("Merhaba,Tobeto");
  print("Merhaba, Kodlamaio");

  // Değişkenler

  var name = "muhammed"; //string
  print(name);

  name = "Mami";
  print(name);

  var age = 25; // int, integer
  print(age);
  print(age + 30);

  var average = 50.5; //double, float ,decimal
  print(average);

  var inClass = false; //Bool, Boolean
  print(inClass);

  //tyoe-safe
  String message = "Merhaba dünya";
  print(message);

  int number = 75;
  print(number);

  bool signedIn = true;
  print(signedIn);

  List numbers = [11, 22, 33, 44, 55, 66, 77, 88, 99];
  print(numbers); //List
  print(numbers[2]);

  List<String> names = ["Muhammed", "Adem", "Havva", "Şükrü"];
  print(names);

  //Döngüler- Loops
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
  print("****");

  for (int number in numbers) {
    print(number);
  }

  //sonsuz döngü
  int i = 0;
  while (i < 5) {
    print("while döngüsü çalıştı"); // kontrol- ilk çalıştırma
    i++;
  }

  //do while

  int j = 0;
  do {
    print("do while çalıştı"); //ilk çalıştırma - kontrol
    j++;
  } while (j < 10);

  //Karar blokları

  double not = 51;

  if (not > 50) {
    print("geçtiniz"); //50den büyükse
  } else if (not == 50) {
    print("sınırdan geçtin"); // 50 'e eşitse
  } else {
    print("Kaldınız"); //yukarıdaki durumlardan hiç biri değilse
  }

  hesapla(50, 40);
  hesapla(5, 40);
  hesapla(50, 4);
  hesapla(554, 140);
  selamla("Halit");
  selamla("Çağla");
  selamla("Ekrem");

  int sonuc = hesapla2(10, 20);
  print(sonuc);

  int sonuc2 = hesapla3(sayi1: 10, sayi2: 30);
  print(sonuc2);
}

void hesapla(int sayi1, int sayi2) {
  print(sayi1 + sayi2);
}

void selamla(String ad) {
  print("Selam " + ad);
}

int hesapla2(int sayi1, int sayi2) {
  return sayi1 + sayi2;
}

//name parameters
//default değer => int sayi2=50
//zorunlu değer => required int sayi2;
//opsiyonel değer => int? sayi2
int hesapla3({required int sayi1, int sayi2 = 50}) {
  return sayi1 + sayi2;
}
