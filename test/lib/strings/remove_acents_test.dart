import 'package:dart_utils/strings/remove_acents.dart';
import 'package:test/test.dart';

void main() {
  test('Removes all accents', () {
    final resp = 'Técnico ãÃ são décimo'.removAccents;
    print(resp);
    assert('Tecnico aA sao decimo' == resp);
  });
}
