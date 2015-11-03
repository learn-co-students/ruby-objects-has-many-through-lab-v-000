require "spec_helper"

describe "Song" do
  let!(:rap) { Genre.new("rap") }
  let!(:ninety_nine_problems) { Song.new("99 problems", rap) } 
  let!(:jay_z) { Artist.new("Jay-Z") }

  describe "#new" do 
    it "initializes with a name and a genre" do 
      expect{Song.new("Lucifer", rap)}.to_not raise_error
    end
  end

  describe "#genre" do
    it "belongs to a genre" do 
      expect(ninety_nine_problems.genre).to eq(rap)
    end 
  end

  describe "#artist" do
    it "belongs to a artist" do 
      ninety_nine_problems.artist = jay_z
      expect(ninety_nine_problems.artist).to eq(jay_z)
    end 
  end
end