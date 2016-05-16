require 'pry'

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []

  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect{ |i| i.genre }
  end
end

#-----------------

class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    self.name = name
    self.genre = genre
    self.genre.add_song(self)
  end

end

#-----------------

class Genre

  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
  end

end

#-----------------

rap = Genre.new("rap")
ninety_nine_problems = Song.new("99 Problems", rap)

binding.pry
       
#expect(rap.songs).to include(ninety_nine_problems)