require_relative 'hangman'

describe Hangman do
  let(:hangman) { Hangman.new }

  it "Lets user enter a word or phrase" do
    expect(hangman.word).to eq "banjo"
  end
end