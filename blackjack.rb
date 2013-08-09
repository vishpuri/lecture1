puts "welcome to the blackjack table!"
def total(cards)
	sum=0
	cards.each do |new|
		sum = sum + new
	end
	return sum
end
deck = {h2:2, h3:3, h4:4, h5:5, h6:6, h7:7, h8:8, h9:9, h10:10, jack_h:10, queen_h:10, king_h:10, ace_h:11, s2:2, s3:3, s4:4, s5:5, s6:6, s7:7, s8:8, s9:9, s10:10, jack_s:10, queen_s:10, king_s:10, ace_s:11, d2:2, d3:3, d4:4, d5:5, d6:6, d7:7, d8:8, d9:9, d10:10, jack_d:10, queen_d:10, king_d:10, ace_d:11, c2:2, c3:3, c4:4, c5:5, c6:6, c7:7, c8:8, c9:9, c10:10, jack_c:10, queen_c:10, king_c:10, ace_c:11}
deckarray = [:h2, :h3, :h4, :h5, :h6, :h7, :h8, :h9, :h10, :jack_h, :queen_h, :king_h, :ace_h, :s2, :s3, :s4, :s5, :s6, :s7, :s8, :s9, :s10, :jack_s, :queen_s, :king_s, :ace_s, :d2, :d3, :d4, :d5, :d6, :d7, :d8, :d9, :d10, :jack_d, :queen_d, :king_d, :ace_d, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :jack_c, :queen_c, :king_c, :ace_c]
deck_shuf = []
deck_shuf = deckarray.shuffle
# deal cards
player_cards = []
dealer_cards = []
player_cards << deck[deck_shuf.pop]
dealer_cards << deck[deck_shuf.pop]
player_cards << deck[deck_shuf.pop]
dealer_cards << deck[deck_shuf.pop]

# calculate totals
playertotal = total(player_cards)
dealertotal = total(dealer_cards)
puts "your cards are #{player_cards[0].to_s} and #{player_cards[1].to_s} and your total is : #{playertotal.to_s}" 
puts "Dealer cards are #{dealer_cards[0].to_s} and #{dealer_cards[1].to_s} and Dealers total is : #{dealertotal.to_s}" 

if playertotal == 21
puts "You Win!"
end

	while playertotal < 21 && dealertotal <21
		puts "Your total is #{playertotal} and dealers total is #{dealertotal} Hit or Stay? 1) Hit 2) Stay"
		if gets.chomp == '1'
			player_cards<<deck[deck_shuf.pop]
			playertotal = total(player_cards)	
			else
				dealer_cards << deck[deck_shuf.pop]
				dealertotal = total(dealer_cards)
		end
	end
		
if playertotal == 21
	puts "You Win!"
end
if playertotal > 21
	puts "Dealer Wins!"
end

if dealertotal == 21
	puts "You Win!"
end
if dealertotal > 21
	puts "You Win!"
end

