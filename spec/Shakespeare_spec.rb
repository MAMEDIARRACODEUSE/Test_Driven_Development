require_relative '../lib/Shakespeare'

RSpec.describe "Shakespeare" do
  describe "#word_counter" do
    it "counts occurrences of words in Shakespeare's corpus" do
      corpus = File.read(File.join(__dir__, '../data/Shakespeare.txt')) # Chemin absolu vers Shakespeare.txt
      dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
      result = word_counter(corpus, dictionary)
      expected_result = {
        "the" => 0, "of" => 0, "and" => 0, "to" => 0, "a" => 0,
        "in" => 0, "for" => 0, "is" => 0, "on" => 0, "that" => 0,
        "by" => 0, "this" => 0, "with" => 0, "i" => 0, "you" => 0,
        "it" => 0, "not" => 0, "or" => 0, "be" => 0, "are" => 0
      }
      expect(result).to eq(expected_result)
    end
  end
end
