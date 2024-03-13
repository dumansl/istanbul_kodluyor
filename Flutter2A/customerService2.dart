import 'customer.dart';
import 'customerServiceInterface.dart';

class CustomerService2 implements CustomerServiceInterface {
  // Loose Coupling
  @override
  add(Customer customer) {
    print("PostgreSQL Database'e eklendi");
  }

  @override
  update(Customer customer) {
    print("PostgreSQL Db Güncellendi");
  }
}
