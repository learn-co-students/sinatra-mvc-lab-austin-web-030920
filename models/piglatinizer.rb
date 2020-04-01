
class PigLatinizer
      
    def piglatinize(text)
      piglatinized_word_array = []
      words = text.split(' ')
      words.each do |word|
        word_array = word.chars
        vowels = %w(a e i o u A E I O U)
        word_array.dup.each_with_index do |char, i|
          if vowels.include?(char)
            if i == 0
              word_array << 'w' 
            end
            break
          else
            word_array << word_array.shift
          end
        end
        piglatinized_word_array << (word_array.join + 'ay')
      end
      piglatinized_word_array.join(' ')
    end

  end