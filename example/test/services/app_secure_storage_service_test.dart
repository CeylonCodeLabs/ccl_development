import 'package:flutter_test/flutter_test.dart';
import 'package:example/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AppSecureStorageServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
