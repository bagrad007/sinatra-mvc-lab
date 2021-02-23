require "pry"

class PigLatinizer
  def piglatinize_word(text)
    text_array = text.split("")
    first_letter = text[0]
    if ["a", "e", "i", "o", "u"].include?(text_array[0].downcase)
      return "#{text}way"
    else
      consonants = []
      consonants << text_array.shift

      until ["a", "e", "i", "o", "u"].include?(text_array[0].downcase)
        consonants << text_array.shift
      end
    end
    "#{text_array.join + consonants.join + "ay"}"
  end

  def piglatinize(words)
    words.split(" ").map do |word|
      piglatinize_word(word)
    end.join(" ")
  end
end
