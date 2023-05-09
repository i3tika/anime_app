import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:aniwolrd/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.bleach).existsSync(), true);
    expect(File(AppImages.jojo).existsSync(), true);
    expect(File(AppImages.jojo4).existsSync(), true);
    expect(File(AppImages.kd).existsSync(), true);
  });
}
