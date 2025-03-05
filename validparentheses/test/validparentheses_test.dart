import 'package:test/test.dart';
import 'package:validparentheses/validparentheses.dart';

void main() {
  Solution solution = Solution();

  group("Parentheses Cases ", (){
 test('Valid parentheses cases', () {
    expect(solution.isValid("()"), isTrue);
    expect(solution.isValid("()[]{}"), isTrue);
    expect(solution.isValid("([])"), isTrue);
    expect(solution.isValid("{[()]}"), isTrue);
  });

  test('Invalid parentheses cases', () {
    expect(solution.isValid("(]"), isFalse);
    expect(solution.isValid("([)]"), isFalse);
    expect(solution.isValid("{[}"), isFalse);
    expect(solution.isValid("(("), isFalse);
    expect(solution.isValid("(()"), isFalse);
    expect(solution.isValid("([)"), isFalse);
  });

  test('Edge cases', () {
    expect(solution.isValid(""), isTrue); // String vazia
    expect(solution.isValid("[]{}()"), isTrue); // Ordem correta
    expect(solution.isValid("[({})]"), isTrue); // Ordem correta
    expect(solution.isValid("[{(})]"), isFalse); // Ordem errada
    expect(solution.isValid("(((((((((())))))))))"), isTrue); // Muitos parênteses aninhados
  });
  });
 
}
