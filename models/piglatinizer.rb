class PigLatinizer

  def piglatinize(string)
    words = string.split(" ")
    check = 0
    array = words.map do |word|
      if word.capitalize! == nil
        check = 1
      end
      word = word.downcase
      if word[0,3] == "str" || word[0,3] == "spr"
        letter = word.slice!(0,3)
      if check == 1
        letter = letter.capitalize
      end
      elsif word.start_with?("a") || word.start_with?("e") || word.start_with?("i") || word.start_with?("o") || word.start_with?("u")
      letter = "w"
      if check == 1
      word = word.capitalize
      end
    elsif word[0,2] == "ch" || word[0,2] == "pl" || word[0,2] == "sh" || word[0,2] == "sm" || word[0,2] == "st" || word[0,2] == "th" || word[0,2] == "pr" || word[0,2] == "sk" || word[0,2] == "wh"
        letter = word.slice!(0,2)
      if check == 1
        letter = letter.capitalize
      end
      else
      letter = word.slice!(0)
      if check == 1
        letter = letter.capitalize
      end
      end
      # if check == 1
      #   letter = letter.capitalize
      # end
      check = 0
      string = "#{word}#{letter}ay"
    end
    array = array.join(" ")
    array

  end

  def to_pig_latin(string)
      words = string.split(" ")
      check = 0
      array = words.map do |word|
        if word.capitalize! == nil
          check += 1
        end
        word = word.downcase
        if word[0,3] == "str" || word[0,3] == "spr"
          letter = word.slice!(0,3)
        elsif word.start_with?("a") || word.start_with?("e") || word.start_with?("i") || word.start_with?("o") || word.start_with?("u")
        letter = "w"
      elsif word[0,2] == "ch" || word[0,2] == "pl" || word[0,2] == "sh" || word[0,2] == "sm" || word[0,2] == "st" || word[0,2] == "th" || word[0,2] == "pr"
          letter = word.slice!(0,2)
        else
        letter = word.slice!(0).downcase
        end
        string = "#{word}#{letter}ay"

      end
      array = array.join(" ")
      if check > 0
        array = array.capitalize
      end
      array

    end
end
