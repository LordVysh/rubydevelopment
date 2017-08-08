text = ''
line_count = 0
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join
total_characters = text.length
nospace_characters = text.gsub(/\s+/, '').length
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length-1
paragraph_count = text.split(/\n\n/).length
stopwords = %w{the a by on for of are with just but and to the my I has some in}

#Get list of words that aren't mostly meaningless
all_words = text.scan(/\w+/)
useful = all_words.reject{ |word| stopwords.include?(word) }
useful_percentage = ((useful.length.to_f / all_words.length.to_f) * 100).to_i

#Create summary
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third+1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{nospace_characters} characters (exluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{useful_percentage}% of words aren't mostly meaningless"
puts "Summary:\n\n" + ideal_sentences.join(". ")
