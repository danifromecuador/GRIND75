# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}

def first_bad_version(n)
  left = 1
  right = n

  while left < right
    mid = left + (right - left) / 2

    if isBadVersion(mid)
      # If the current version is bad, search in the left half
      right = mid
    else
      # If the current version is not bad, search in the right half
      left = mid + 1
    end
  end

  # At this point, left and right converge to the first bad version
  left
end