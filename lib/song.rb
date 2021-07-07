class Song
  attr_accessor :name, :genre, :artist, :song_name
@@all = []


  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@all << self
    end

    def genre
      @genre
    end

  def self.all
    @@all
  end

end
