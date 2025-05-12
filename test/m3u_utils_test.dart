import 'dart:convert';
import 'dart:io';

import 'package:m3u_utils/m3u_utils.dart';
import 'package:test/test.dart';

void main() {
  group('Test M3u Parser functions', () {
    late final String m3u;
    late final String output;

    setUp(() {
      m3u = File('assets/input.m3u').readAsStringSync();
      output = File('assets/output.json').readAsStringSync();
    });

    test('parse feature', () {
      expect(M3uUtils.parse(m3u), jsonDecode(output));
    });
  });
}
