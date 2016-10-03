require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new }

  it "Lets user enter a word or phrase" do
    expect(hangman.game_word("austin")).to eq ["a", "u", "s", "t", "i", "n"]
  end

  it "Checks to see if the word contains a letter" do
    expect(hangman.check_letter("a")).to eq "a"
  end

  it "shows underscores with amount of letters in array" do
    expect(hangman.current_state).to eq @word.length
  end
end