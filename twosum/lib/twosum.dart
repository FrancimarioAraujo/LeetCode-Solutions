
class Solution {
  List<int> twoSum(List<int> nums, int target) {
   for (int i = 0; i <nums.length; i++) {
      for(int j = i + 1; j<nums.length; j++){
        if(nums[i] + nums[j] == target){
          return [i,j];
        }
        
      }
    }
    return [];
  }
}

void main(List<String> args) {
  final solution = Solution();
  print( solution.twoSum([2, 7, 11, 15], 9));

}