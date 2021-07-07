class Genre

attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def songs
      Song.all.collect do |song|
        if song.genre == self
           song
        end
      end
    end

    def artists
      self.songs.collect do |song|
        song.artist if song
      end
    end
end
