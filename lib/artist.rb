require 'pry'

class Artist


  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end


  def self.all
    @@all
    end

    def new_song(name, genre)
    song = Song.new(name, self, genre)
      @songs << song
      song
    end

  def songs
    @songs
  end



def add_song(song)
  @songs << song
end


  def genres
    self.songs.collect do |song|   #call the artist class on the songs method and collect the song
      song.genre  #then call the genre on the song
    end
  end


end
