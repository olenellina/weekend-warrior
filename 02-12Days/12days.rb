class Xmas
  # Setting up a Class variable to avoid repeating the text within the Class methods
  @@gifts = ["and a partridge in a pear tree", "two turtle doves", "three french hens", "four calling birds", "FIVE GOLDEN RINGS", "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping", "eleven pipers piping", "twelve drummers drumming"]

  def self.gifts(num)
    giftsArray = []
    counter = num + 1

    counter.times do |x|
      giftsArray.push(@@gifts[x])
    end

    # Handling corner case for the first gift
    if num == 0
      giftsArray[0] = "a partridge in a pear tree"
    end

    return giftsArray.reverse
  end


  def self.verse(num)
    verse = ""
    giftsArray = []
    counter = num + 1
    words = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]

    counter.times do |x|
      giftsArray.push(@@gifts[x])
    end

    giftsArray.reverse!

    counter.times do |x|
      verse = "On the #{words[x]} day of Christmas my true love gave to me"
      # Again, handling corner case for first gift
      if num == 0
        verse = verse + "\na partridge in a pear tree"
      else
        counter.times do |y|
          verse = verse + "\n#{giftsArray[y].to_s}"
        end
      end
    end

    return verse
  end

  def self.sing
    song = ""
    12.times do |x|
      # Adds a newline after each verse
      if x > 0
        song = song + "\n"
      end
      # This IF block ensures a newline won't be added at the start or end of program execution (required by tests)
      if x < 12 && x > 0
        song = song + "\n"
        song = song + Xmas.verse(x)
      else
        song = song + Xmas.verse(x)
      end
    end
    return song
  end

end
