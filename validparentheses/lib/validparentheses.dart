class Solution {
  bool isValid(String s) {
    List<String> elements = s.split('');
    List<String> stack = [];
    for(String element in elements){
        if(element == "(" || element == "{" || element == "["){
            stack.add(element);
        }
        else if(element == ")" || element == "}" || element == "]"){
            if(stack.isEmpty){
                return false;
            }

          if(stack.last == "(" && element == ")" || stack.last == "{" && element == "}" || stack.last == "[" && element == "]"){
            stack.removeLast();
          }
          else{
            return false;
          }
        }
    }
    return stack.isEmpty;
  }

  
}
void main(List<String> args) {
//   Solution solution = Solution();
//   print(solution.isValid("(()){"));

    
}