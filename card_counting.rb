#   count = 0
# array = [1..14]
#
# array.each do |card|
# if array.include?(2..6)
#   count += 1
#   return sum
#
# elsif array.include?(10..14)
#   count -= 1
#   return
# end
#
# end
#
# card_count ('K2T6A') ---> -2
# card_count ('798TT23') ---> 0
# card_count ('235T22') ---> 4

CARDS_IN_A_DECK = 52
CARDS_IN_EACH_ARRAY = 4
#Check input
def card_count(played_cards)
return false if played_cards.size > CARDS_IN_A_DECK

#Check for cheating
# keep track of hash value and see how often it has been played.

# { '2' => 3,
#   '3' => 2,
#   '4' => 0,
#   'K' => 5,
#   'A' => 1,
# }
played_cards_hash = Hash.new
%w(2 3 4 5 6 7 7 8 9 T Q K A ).each { |card| played_cards_hash[card] = 0 }
played_cards_string.chars.each { |card| played_cards_hash[card] += 1
  return false if played_cards_hash.select { |k,v| v > CARDS_IN_EACH_ARRAY}.size > 0

  played_cards_string.chars.each do |card|
  count += case card
  when '2', '3', '4', '5', '6' then 1
  when 'T', 'J', 'Q', 'K', 'A' then -1
  else 0
  end

count = 0
played_cards_string.chars.each do |card| #chars method returns an array of characters in string
case card
when '2', '3', '4', '5', '6'
  count += 1

when 'T', 'J', 'Q', 'K', 'A'
  count -=1

end
end
return count
end

puts card_count('')
puts card_count('23456789TJQKA23456789TJQKA23456789TJQKA23456789TJQKA22')
puts card_count ('K2T6A')
puts card_count ('798TT23')
puts card_count ('235T22')

#OR IF STATEMENTS
if card == '2' || card == '3' || card == '4' || card == '5', || card == '6'
  count += 1

elsif card == 'T' || card == 'J' || card == 'Q' || card == 'K' || card == 'A' ||
count -= 1
end
end
