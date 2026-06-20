def substrings(sentence, dictionary)
  results = Hash.new(0)
  words = sentence.downcase.split

  words.each do |word|
    dictionary.each do |dictionary_word|
      results[dictionary_word] += 1 if word.include?(dictionary_word.downcase)
    end
  end

  results
end

dictionary = %w[
  Hello you how Poo
]

p substrings('Howdy Poo, how are you?', dictionary)
