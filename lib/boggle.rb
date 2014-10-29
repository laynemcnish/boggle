class Boggle

  def initialize(board)
    @board = board.downcase.split("")
    @dictionary = []
    @found_words = []
    IO.foreach("/Users/laynemcnish/gSchoolWork/boggle/bin/dictionary.txt") { |word| @dictionary << word.delete("\n") if word.length >=3 }
    @dictionary = Hash[@dictionary.map.with_index.to_a]
    @neighbors = [[1, 4, 5], [0, 2, 4, 5, 6], [1, 3, 5, 6, 7], [2, 6, 7], [0, 1, 5, 8, 9], [0, 1, 2, 4, 6, 8, 9, 10], [1, 2, 3, 5, 7, 9, 10, 11], [2, 3, 6, 10, 11], [4, 5, 9, 12, 13], [4, 5, 6, 8, 10, 12, 13, 14], [5, 6, 7, 9, 11, 13, 14, 15], [6, 7, 10, 14, 15], [8, 9, 13], [8, 9, 10, 12, 14], [9, 10, 11, 13, 15], [10, 11, 14]]
  end

  def score
    @board.each_index do |index|
      visited = Array.new(16, false)
      current_string = ""
      explore_words(index, visited, current_string)
    end
  end

  def explore_words(i, visited, str)
    visited[i] = true
    new_string = str + @board[i]
    is_a_valid_boggle_word?(new_string)
    for j in @neighbors[i]
      if visited[j] != true
        explore_words(j, visited, new_string)
      end
    end
    visited[i] = false
    new_string == new_string[0...str.length]
  end

  def is_a_valid_boggle_word?(word)
    if word.length >= 3 && @dictionary[word] != nil
      @found_words << word
    end
  end

  def find_words
    score
    @found_words.uniq.sort
  end
end

board = "abcdefghijklmnop".upcase!
p Boggle.new(board).find_words

