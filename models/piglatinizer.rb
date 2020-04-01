class PigLatinizer
    
    def initialize()
        
    end

    def piglatinize(string)
        if string.include?(' ')
            results = ''
            words = string.split(' ')
            words.each do |word| results += (' ' +  piglatinizehelper(word)) end
            results[0] = ''
            results
        else
            piglatinizehelper(string)
        end
    end

    def piglatinizehelper(string)
        alpha = ('a'..'z').to_a
        bet = ('A'..'Z').to_a
        alphabet = alpha + bet
        vowels = %w[a A e E i I o O u U]
        consonants = alphabet - vowels

        if vowels.include?(string[0])
            string + "way"
        else
            if consonants.include?(string[0]) && consonants.include?(string[1]) && consonants.include?(string[2])
                string[3..-1] + string[0..2] + "ay"
            elsif consonants.include?(string[0]) && consonants.include?(string[1])
                string [2..-1] + string[0..1] + "ay"
            else
                string [1..-1] + string[0] + "ay"
            end
        end
    end

end