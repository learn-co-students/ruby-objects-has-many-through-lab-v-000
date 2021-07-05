class Genre

  attr_accessor :name, :artist, :songs

  @@all = []

  def initialize(name)
    @name = name
    @artists = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
      Song.all.select { |song| song.genre == self }
    end

    def artists
       songs.each do |song|
         @artists << song.artist
       end
       @artists
      end


end
