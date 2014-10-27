#  0  1  2  3
#  4  5  6  7
#  8  9 10 11
# 12 13 14 15

class Boggle
  def initialize(board)
    @board = board
    @coordinates = (0..15).to_a
    @dictionary = []
    @all_possible_words = []
    @found_words = []
    IO.foreach("/Users/laynemcnish/gSchoolWork/boggle/bin/dictionary.txt") { |line| @dictionary << line }
  end

  def find_all_possible_words
    @dictionary.each do |word|
      @board.each do |coord, letter|
        @all_possible_words << word if word[0] == letter
      end
    end
  end
end

board = ["a", "b", "d", "k", "e", "h", "g", "k", "s", "l", "e", "k", "g", "h", "d", "k"]

Boggle.new(board)