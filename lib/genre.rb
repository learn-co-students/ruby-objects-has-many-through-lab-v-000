class Genre
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    songs = []
    @@all << self
  end

  def self.all
      @@all
  end

  def songs
    Song.all{|song| song.genre == self}
end

  def artists
    songs.map{|song| song.artist}
    end

end
