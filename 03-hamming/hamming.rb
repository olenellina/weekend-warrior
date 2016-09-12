class Hamming
  def self.compute(a, b)
    ham_distance = 0
    # Raise an ArgumentError if the lengths are unequal
    if a.length != b.length
      raise ArgumentError
    # Return the ham_distance (intialized to 0 above) if the strings are equal
    elsif a == b
      return ham_distance
    else
      # Else, compare the two strings one character at a time.
      # For every character difference, increment ham_distance by 1
      a.length.times do |x|
        if a[x] != b[x]
          ham_distance += 1
        end
      end
      # Return the final result of ham_distance
      return ham_distance
    end
  end
end
