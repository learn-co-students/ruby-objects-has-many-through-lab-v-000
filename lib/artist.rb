class Artist
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  @@songs = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def new_song(name,genre)
    new_song = Song.new(name,self,genre)
    @songs << new_song
    new_song
  end
  
  
  #   describe "#new_song" do
  #   it "given a name and genre, creates a new song associated with that artist" do
  #     jay_z = Artist.new("Jay-Z")
  #     rap = Genre.new("rap")
  #     ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

  #     expect(jay_z.songs).to include(ninety_nine_problems)
  #     expect(ninety_nine_problems.artist).to eq(jay_z)
  #   end
  # end
  
  def songs
    # @@songs.select { |song| song.name == @name }
    @songs
  end
  
  def genres
    songs.collect { |song| song.genre }
  end
  
end