import '../imports/index.dart';

class ColorGenerator {
  static Color colorGenerator() {
    Random random = Random();
    int maxValueHex = 0xff000000;
    String fullString = random
        .nextInt(maxValueHex)
        .toRadixString(16);

    int number = 0;
    for (int i = 0; i <= fullString.length - 8; i += 8) {
      final String hex = fullString.substring(i, i + 8);
      number = int.parse(hex, radix: 16);
    }
    return Color(number);
  }

  static Color generator() {
    Random random = Random();
    int maxValueHex = 0xff000000;
    BigInt bigInt = BigInt.from(random.nextInt(maxValueHex));

    String radixString = bigInt.toRadixString(16);

    BigInt number = BigInt.from(0);
    for (int i = 0; i <= radixString.length - 8; i += 8) {
      final hex = radixString.substring(i, i + 8);
      number = BigInt.from(int.parse(hex, radix: 16));
    }
    return Color(number.toInt());
  }
}
