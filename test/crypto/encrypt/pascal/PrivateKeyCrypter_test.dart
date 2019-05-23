
import 'dart:typed_data';

import 'package:pascaldart/common.dart';
import 'package:pascaldart/crypto.dart';
import 'package:pascaldart/pascaldart.dart';
import 'package:test/test.dart';

import '../../fixtures/PrivateKey.dart';

void main() {
  group('crypto.encrypt.pascal.PrivateKeyCryptor', () {   
    PrivateKeyFixtures fixtures;

    setUp(() {
      fixtures = PrivateKeyFixtures();
    });  

    test('can encrypt and decrypt a private key', () {
      fixtures.curve714.forEach((c) {
        PrivateKey pkDecrypted = PrivateKeyCrypter.decrypt(Util.hexToBytes(c['encrypted']), c['password']);
      });
    });
  });
}
