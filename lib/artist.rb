class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name= name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_song(name,genre)
    Song.new(name,self,genre)
  end
  def songs
     Song.all.select {|song| song.artist == self} #select all the songs objects for this artist.=> [#<Song:0x007f9f730b49c8 @name="Ninety Nine Problems", @artist=#<Artist:0x007f9f730e4808 @name="Jay-Z">, @genre=#<Genre:0x007f9f730d6258 @genre="rap">>]
  end
  def genres
    songs.map { |e| e.genre  }  #=> [#<Genre:0x007f9f730d6258 @genre="rap">]
  end

end
