# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}

def is_bad_version(n)
  return true if n == 4
  return false if n == 3
end

def first_bad_version(n)
  return n if is_bad_version(n) && !is_bad_version(n-1)

  
  
  
      
end

p first_bad_version(4)