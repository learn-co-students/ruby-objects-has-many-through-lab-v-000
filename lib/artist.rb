class Artist
  attr_accessor :name,:songs
  attr_reader :genres
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def new_song(name,genre)
    song = Song.new(name,self,genre)
    @songs << song
    song
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end


end
