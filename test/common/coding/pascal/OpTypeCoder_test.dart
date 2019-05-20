
import 'package:pascaldart/common.dart';
import 'package:test/test.dart';

void main() {
  group('common.coding.pascal.OpTypeCoder', () {
    test('can encode a pascalcoin opType in int8', () {
      expect(Util.byteToHex(OpTypeCoder(1).encodeToBytes(9)), '09');
    });
    test('can decode a pascalcoin opType to int8', () {
      expect(OpTypeCoder(1).decodeFromBytes(Util.hexToBytes('09')), 9);
    });
    test('can encode a pascalcoin opType in int16', () {
      expect(Util.byteToHex(OpTypeCoder(2).encodeToBytes(9)), '0900');
    });
    test('can decode a pascalcoin opType to int16', () {
      expect(OpTypeCoder(2).decodeFromBytes(Util.hexToBytes('0900')), 9);
    });
    test('can encode a pascalcoin opType in int32', () {
      expect(Util.byteToHex(OpTypeCoder(4).encodeToBytes(9)), '09000000');
    });
    test('can decode a pascalcoin opType to int32', () {
      expect(OpTypeCoder(4).decodeFromBytes(Util.hexToBytes('09000000')), 9);
    });
    test('cannot handle a wrong bytesize', () {
      expect(() => OpTypeCoder(100), throwsException);
    });
  });
}
