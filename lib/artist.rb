class Artist

  attr_accessor :name, :songs

  def initialize(name) #initializes with a name and an empty collection of songs
    @name = name #has a name"; expect{Artist.new("Beyonce")}.to_not raise_error
    @songs = []  # @songs= "expect(taylor_swift.instance_variable_get(:@songs)).to eq([])"
  end

  def add_song(song) #adds a new song to the artist's @songs array and tells that song that it belongs to the artist
    @songs << song #argument of a song that's added to the artist's collection of songs
    song.artist = self #tells the song that it belongs to the artist
  end

  def songs
    @songs #returns the array of songs
  end

  def genres
    self.songs.collect do |song| #iterates over that artist's songs and collects the genre of each song.
      song.genre
    end
  end

end
