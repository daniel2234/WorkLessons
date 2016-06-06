# Constant values that store markers
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
# method that takes in message
def prompt(msg)
	puts "#{msg}"
end

#displays the board
def display_board(brd)
	puts ""
	puts "     |       |"
	puts "  #{brd[1]}  |   #{brd[2]}   |   #{brd[3]}"
	puts "     |       |"
	puts "-----+-------+-----"
	puts "     |       |"
	puts "  #{brd[4]}  |   #{brd[5]}   |   #{brd[6]}"
	puts "     |       |"
	puts "-----+-------+-----"
	puts "     |       |"
	puts "  #{brd[7]}  |   #{brd[8]}   |   #{brd[9]}"
	puts "     |       |"
	puts ""
end


def intialize_board
	new_board = {}
	(1..9).each { |num| new_board[num] = INITIAL_MARKER}
	new_board
end

def empty_squares?(brd)
  brd.keys.select{|num| brd[num] == INITIAL_MARKER}
end

#mutates based on player decision
def player_places_piece!(brd)
	square = ''
	loop do
		prompt "Choose a square (#{empty_squares?(brd).join(', ')}):"
		square = gets.chomp.to_i
    break if empty_squares?(brd).include?(square)
      prompt "Sorry, that's not a valid choice"
  end
  brd[square] = 'X'
end

board = intialize_board
display_board(board)

player_places_piece!(board)
puts board.inspect
display_board(board)

