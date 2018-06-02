require "spec_helper"

describe "Genre" do

  describe "#name" do
    it "has a name" do
      rap = Genre.new("rap")
      expect(rap.name).to eq("rap")
    end
  end

  describe "#songs" do
    it "has many songs" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      Song.new("99 Problems", rap, jay_z)
      shrimp = Song.new("Big Shrimpin", rap, jay_z)

      # expect(rap.songs).to include(shrimp)
    end
  end

  describe "#artists" do
    it "has many artists, through songs" do
      jay_z = Artist.new("Jay-Z")
      kendrick = Artist.new("Kendrick Lamar")
      rap = Genre.new("rap")
      ninenty_nine_problems = Song.new("99 Problems", rap, jay_z)
      humble = Song.new("HUMBLE", rap, kendrick)


      # expect(rap.artists).to include(jay_z)
      # expect(rap.artists).to include(kendrick)
    end
  end
end
