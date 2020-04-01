

class  PigLatinizer
    attr_accessor :string

    def initialize(str)
        # binding.pry
        
        if str.scan(/[\w'-]+/).length == 1
            @string = pl(str)
        else 
            @string = split_words(str)
        end
    end

    def pl(word)
        if !find_vowel(word[0..2])
            word = word.slice(3..-1) + word.slice(0,3)

        elsif !find_vowel(word[0..1])
            word = word.slice(2..-1) + word.slice(0,2)       
        
        elsif !find_vowel(word[0])
            word = word.slice(1..-1) + word.slice(0,1) 

        else  
           word = word + "w"
        end
        word + "ay"
    end

    def find_vowel (letters)
        letters.match?(/[aeiou]/)
    end


    def split_words (words)
        words.split(" ").map {|word| pl(word)}.join(" ")
    end
 
end




# split the words and put them in an Array

# if first letter is a consonant, move from first to last and add ay 
# if first letter is vowel, add way to the end

# return each word in the array

#puts each index in word array