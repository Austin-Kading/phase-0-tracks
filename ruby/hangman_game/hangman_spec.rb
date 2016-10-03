require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new }

  it "Lets user enter a word or phrase" do
    expect(hangman.game_word("austin")).to eq "austin"
  end

  it "Checks to see if the word contains a letter" do
    expect(hangman.check_letter("a")).to eq "a"
  end
end