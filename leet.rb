module Leet
  # This module contains solutions to various leetcode problems
  # from the "Top Interview 150" collection, in the order they
  # were served up by the site.

  # 88. Merge Sorted Array
  def merge(nums1, m, nums2, n)
    return if n==0

    i = m + n - 1 
    while i >= 0 && n > 0 do
        if m > 0 && nums1[m-1] > nums2[n-1]
            nums1[i] = nums1[m-1]
            m-=1
        else
            nums1[i] = nums2[n-1]
            n-=1
        end 
        i-=1
    end
  end

  # 27. Remove Element
  def remove_element(nums, val)
    l = nums.size
    return 0 if l==0

    k = 0

    for i in 0...nums.length
        if nums[i] == val
            k += 1 
        else
            nums[i-k] = nums[i]
        end
    end

    l - k
  end

  # 26. Remove Duplicates from Sorted Array
  def remove_duplicates(nums)
    elems = Hash.new
    k = 0

    nums.each_with_index do |num, i|
        unless elems.key?(num)
            elems[num] = true
            nums[k] = num
            k += 1
        end
    end

    k
  end


  # 80. Remove Duplicates from Sorted Array II
  def remove_duplicates(nums)
    elems = Hash.new
    elems.default = 0
    k = 0

    nums.each_with_index do |num, i|
        unless elems[num] >= 2
            elems[num] += 1
            nums[k] = num
            k += 1
        end
    end

    k
  end
end
