class Artist
  attr_accessor :name, :songs

  @@all = []


  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def songs
    #Song.all.map {|song| song.artist == self}
    @songs
  end

  def self.create(artist)
    if artist.class == Artist
      artist
    else
      if artist_name.exists?(artist)
        find_artist(artist)
      else
        self.new(artist)
      end
    end
  end

  def find_artist(artist_name)
    self.all.detect {|artist| artist.name == artist_name}
  end

  def self.exists?(artist_name)
    if find_artist(artist_name).nil?
      false
    else
      true
    end
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    @songs
  end

  def genres
    (self.songs.map {|song| song.genre}).uniq
  end

end
