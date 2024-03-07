class Product {
  // ctor - constructor
  // kalıptan her yeni örnek oluştuğunda çalışacak fonk.

  // eğer hiç bir ctor tanımı yoksa, boş ctor tanımı auto. eklenir.
  // named parameters-unnamed parameters
  Product({required String name, int? stock, double? unitPrice}) {
    // this => classın kendisini
    this.name = name;
    this.stock = stock;
    this.unitPrice = unitPrice;
  }
  // dart'da 2 adet isimsiz ctor oluşturulamaz!
  // 1 unnamed - n adet named ctor
  // named-unnamed ctor
  Product.empty() {}
  Product.all(
      {required String name, required int stock, required double unitPrice}) {
    this.name = name;
    this.stock = stock;
    this.unitPrice = unitPrice;
  }

  // sınıfın özellikleri, methodlarını, alanlarını
  int? stock;
  // late => alan sonradan init edilecek.
  late String name;
  double? unitPrice;

  void displayInfo() {
    print("Stok: $stock İsim: $name Fiyat: $unitPrice");
  }
}
// sınıfın dışı
