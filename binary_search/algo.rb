# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

def search(nums, target)
  min = 0
  max = nums.size-1
  mid = (min+max)/2

  def recursion(nums, target, min, mid, max)
    return min if target == nums[min]
    return mid if target == nums[mid]
    return max if target == nums[max]
    return -1 if (min == mid || mid == max)

    if target < nums[mid]
      max = mid
      mid = (min+max)/2
      return recursion(nums, target, min, mid, max)
    end

    if target > nums[mid]
      min = mid
      mid = (min+max)/2
      return recursion(nums, target, min, mid, max)
    end
  end

  recursion(nums, target, min, mid, max)
end
