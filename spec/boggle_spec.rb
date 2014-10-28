require 'boggle'
require 'rspec'

describe Boggle do

  it "can find words in a row" do
    board = "bar1234567890123"
    expect(Boggle.new(board).find_words).to eq(["bar"])
  end

  it "can find words with diagonally spaced letters" do
    board = "b111a11nt1a11m11"
    expect(Boggle.new(board).find_words).to eq(["atma", "atman", "bat", "batman", "man", "nam", "tab"])
  end

  it "can find words vertically" do
    board = "b111a111t111s111"
    expect(Boggle.new(board).find_words).to eq(["bat", "bats", "stab", "tab"])
  end

  it "ignores duplicated words" do
    board = "barn11111111nrab"
    expect(Boggle.new(board).find_words).to eq(["bar","barn"])
  end
end