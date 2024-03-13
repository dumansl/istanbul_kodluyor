import 'customer.dart';
import 'customerServiceInterface.dart';

class CustomerService implements CustomerServiceInterface {
  @override
  add(Customer customer) {
    print("Mysql Database'e eklendi");
  }

  @override
  update(Customer customer) {
    print("Mysql Database'e güncellendi");
  }
}

// Yazılım ürünleri sürekli değişir ve gelişir.
