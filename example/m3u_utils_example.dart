import 'dart:convert';
import 'dart:io';

import 'package:m3u_utils/m3u_utils.dart';

void main() {
  String m3u = File('examples/data.m3u').readAsStringSync();
  final Map<String, dynamic> result = M3uUtils.parse(m3u.trim());
  print(jsonEncode(result));
}
