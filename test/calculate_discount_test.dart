import 'package:test/test.dart';

void main() {
  test('Calculate the discount', () {
    const double discount = 10;
    const double initialValue = 100;
    const double discountedValue = 90;

    expect(calculateDiscount(initialValue, discount), equals(discountedValue));
  });
}

double calculateDiscount(double initialValue, double discount) {
  if (initialValue <= 0) {
    throw ArgumentError("The initial value cannot be less than zero!");
  }

  if (discount <= 0) {
    throw ArgumentError("The discount value cannot be less than zero!");
  }

  return initialValue - discount;
}
