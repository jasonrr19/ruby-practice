# # 1 - integer
# # "string"
# # true
# # false
# # {} - hash ("objects in javascript", "dictionary: python") always key value pair, hashes within hashes. arrays within hash
# # [] - array - array within array, hash within array.
# # { aya: "woman", jason: "man" }
# # [1,2,23,4]
aya = { catibag: "woman", jason: {age: 29, height: 188, favorite_colors: ["green", "black"]}}

# # p aya[:jason][:favorite_colors].sort {|i, f| i <=> f} (alphabetizes)
# # p aya[:jason][:favorite_colors].sort {|i, f| f <=> i} (reverses)
# # p aya[:jason][:favorite_colors].sort_by {|i| i.count}
# # p aya[:jason][:favorite_colors][1].
jason_colors = aya[:jason][:favorite_colors]
# jason_colors.delete_at(0) #(you use square brackets when reading values from a hash or array)
# jason_colors.shift# removes first
# # .pop removes last
# jason_colors << "red" #(throws in at the end)
# jason_colors << "blue"
# jason_colors.unshift("blue")# (throws in at the start)
# jason_colors.push("blue")# (throws in at the end)
# aya[:jackie] = "rush hour"
# jason_colors[4] = "yellow"
# jason_colors[jason_colors.count] = "brown"

# p jason_colors

# p jason_colors = jason_colors.uniq

# # p jason_colors.filter {|e| jason_colors.count(e) == 1} (keep if count is equal to 1)

# for i in jason_colors do
#   puts "I love #{i}"
# end

# # i = 0
# # while i < 5
# #   p i
# #   i+=1
# # end

# # i = 0
# # until i > 5
# #   p i
# #   i+=1
# # end

# jason_colors.each_with_index do |i, index|
#   p "#{index + 1}. #{i}"
# end

# # p jason_colors.map {|x| "purple"}

# # p (jason_colors.map.with_index do |i, index|
# #  "#{index + 1}. #{i}"
# # end)

# chocolate = gets.chomp

# def aya(chocolate)
#  if ["hershey", "snickers", "kit-kat"].include?(chocolate)
#   puts "Aya is happy!"
#  else
#   puts "Aya is hangry!"
#  end
# end

# hello = aya(chocolate)
# p hello

# def catibag
#   response = gets.chomp
#   puts "thank you for your response!"
#   response.capitalize
# end

# p catibag

# 1
# "hello"
# p aya_colors

FAVE_COLORS = {aya: ["green", "brown"], jason: jason_colors}

jason_colors.each_with_index do |color, index|
  puts "Guess #{FAVE_COLORS.key(jason_colors)}'s top#{index + 1} color!"
  guess = gets.chomp
  if guess == color
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end

def playtime(array_of_colors)
  array_of_colors.each_with_index do |color, index|
    puts "Guess #{FAVE_COLORS.key(array_of_colors)}'s top#{index + 1} color!"
    guess = gets.chomp
    if guess == color
      puts "Correct!"
    else
      puts "Incorrect!"
    end
  end
end

playtime(FAVE_COLORS[:aya])
