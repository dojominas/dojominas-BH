class ProgAritmetica
  def subprog(arr)
    ret = []
    return [arr] if isprog(arr)
    subarray(arr).each_with_index do |sub,i|
      ret << sub if isprog(sub)
      subprog(sub).each do |sub2|
        ret << sub2
      end
    end

    return ret
  end
  def isprog(arr)
    return false if arr.length < 3
    arr.sort!
    arr.each_with_index do |num, i|
      next if i == 0
      next if i == arr.length-1
      return false unless (arr[i+1] - num == num - arr[i-1])
    end
    return true
  end

  def subarray(arr)
    arr.map do |num|
      arr - [num]
    end
    # return [[2,3], [1,3], [1,2]] if arr == [1,2,3]
    # [[2,3,4], [1,3,4], [1,2,4], [1,2,3]]
  end
end #fim da classe
