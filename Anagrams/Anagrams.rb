# def anagram?(str1, str2)

#   str1.each_char do |char|
#     if !str2.include?(char) || str1.length != str2.length
#       return false
#     end
#   end

#   true
# end

def first_anagram?(word1, word2)
  character_array = word1.chars
  possible_anagrams = character_array.permutation.to_a
  
  anagrams = possible_anagrams.map do |anagram|
     anagram.join('')
  end

  return anagrams.include?(word2)
      
end

# p second_anagram?('elvis', 'lives')


def second_anagram?(word1, word2)
    word1 = word1.chars
    word2 = word2.chars

    word1.each do |char|
      matching_idx = word2.index(char)
      unless matching_idx == nil
        word2.delete_at(matching_idx)
      end
    end

    return word2.empty?
end

#  p second_anagram?('elvis', 'livsry')

def third_anagram?(word1, word2)
  word1 = word1.chars.sort.join
  word2 = word2.chars.sort.join

  word1 == word2
end

# p third_anagram?('elvis', 'lives')
# p third_anagram?('elvis', 'livsry')

def fourth_anagram?(word1, word2)
  hash_1 = Hash.new(0)
  hash_2 = Hash.new(0)

  word1.each_char do |char|
    hash_1[char] += 1
  end
  word2.each_char do |char2|
    hash_2[char2] += 1
  end

  hash_1 == hash_2
end

# p fourth_anagram?('elvis', 'lives')
# p fourth_anagram?('elvis', 'livsry')