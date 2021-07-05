class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song (name, artist)
    Song.new(name,artist, self)
    #should know it belongs to genre
  end

  def songs
    Song.all.select do |song| song.genre == self
    end
  end

  def artists
    #iterates over genre, collects artist
    songs.map do |song| song.artist
    end
  end

end
