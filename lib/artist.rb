class Artist
  attr_accessor :name, :songs, :genre
  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    @genres=[]
    @@all<<self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def new_song(song_name,genre)
    song=Song.new(song_name, self, genre)
    @songs<<song
    song
  end

  def genres
    @songs.collect do |song|
      song.genre
      end
    end
  end
