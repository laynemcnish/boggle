#  0  1  2  3
#  4  5  6  7
#  8  9 10 11
# 12 13 14 15

class Boggle
  def initialize(board)
    @board = board
    @dictionary = []
    IO.foreach("/Users/laynemcnish/gSchoolWork/boggle/bin/dictionary.txt") { |line|
      @board.each do |letter|
        @dictionary << line if line[0] == letter && line.length >= 3
      end
    }
  end

  def add_coordinates
    @coordinates = (0..15).to_a
    @board_hash = Hash[@coordinates.zip(@board)]
  end

end

board = ["a", "b", "d", "k", "e", "h", "g", "k", "s", "l", "e", "k", "g", "h", "d", "k"]

Boggle.new(board)


@found_words = []
