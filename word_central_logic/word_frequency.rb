text = "Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like they're actually proud of that shit. "
smushed_text = text.downcase.gsub(/[^a-z0-9\s]/i, '')
words_array = smushed_text.split(" ")

word_counts = {}

words_array.each do |the_word|
  # Is the word present in the hash?
  if word_counts[the_word] == nil
    # If not, set it to an initial value of 1
    word_counts[the_word] = 1
  else
    # If it is present, increment it by 1
    word_counts[the_word] += 1
  end
end


sorted_words = word_counts.sort_by do |the_word, count|
  count
end

top_ten = sorted_words.last(10).reverse

top_ten.each_with_index do |mini_array, index|
  puts "#{index + 1}. #{mini_array[0]} - #{mini_array[1]}"
end

# ERB VERSION
# <ul>
#   <% top_ten.each do |mini_array| %>
#     <li> <%= mini_array[0] %> - <%= mini_array[1] %> </li>
#   <% end %>
# </ul>
