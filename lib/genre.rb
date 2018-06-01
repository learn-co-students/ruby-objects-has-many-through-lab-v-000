class Genre
@@all = []

attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end


def new_song(name, artist)
  new_song = Song.new(name, artist, self)
end

def songs
  Song.all.select {|song| song.genre == self}
end

def songs
  Song.all.select {|song| song.genre == self}
end

def artists
  songs.map {|song| song.artist}
end


def self.all
  @@all
end


end
