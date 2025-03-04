import 'package:test/test.dart';
import 'package:twosum/twosum.dart';

void main() {
  final solution = Solution();
 group('Two Sum Tests', () {
  test('Caso de teste 1', () {
    expect(solution.twoSum([2, 7, 11, 15], 9), equals([0, 1]));
  });

  test('Caso de teste 2', () {
    expect(solution.twoSum([3, 2, 4], 6), equals([1, 2]));
  });

  test('Caso de teste 3', () {
    expect(solution.twoSum([3, 3], 6), equals([0, 1]));
  });

  test('Caso de teste com números negativos', () {
    expect(solution.twoSum([-3, 4, 3, 90], 0), equals([0, 2]));
  });

  test('Caso de teste com grandes números', () {
    expect(solution.twoSum([1000000000, 3, -1000000000], 0), equals([0, 2]));
  });


  test('Caso com apenas dois números', () {
    expect(solution.twoSum([5, 5], 10), equals([0, 1]));
  });

 


  test('Caso com números repetidos', () {
    expect(solution.twoSum([1, 1, 2, 3, 4], 2), equals([0, 1]));
  });


  test('Caso com array não ordenado', () {
    expect(solution.twoSum([15, 2, 7, 11], 9), equals([1, 2]));
  });

  
  test('Caso de teste com array de tamanho grande', () {
    var largeArray = List.generate(10000, (i) => i + 1);
    expect(solution.twoSum(largeArray, 19999), equals([9998, 9999]));  // 9998 + 9999 = 19999
  });

});

}