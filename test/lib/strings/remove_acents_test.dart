import 'package:dart_utils/strings/remove_acents.dart';
import 'package:test/test.dart';

void main() {
  test('Remove todos os acentos', () {
    final resp = 'João Técnico'.removAcents;
    print(resp);
    assert('Joao Tecnico' == resp);
  });
}
