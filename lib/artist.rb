class Artist
  attr_accessor :name, :songs

  
@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def genres
    array_of_songs = self.songs
    array_of_genres = array_of_songs.collect do |song|
      song.genre
    end
    array_of_genres
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
   
    #Need to put this song into this artists array of songs.
    # @@all << song.New
    # @@all << genre.New
  end


  def self.all
    @@all
  end


end




#Michael Jackson <<< artist
# Michael Jackson's songs [billie jean, ]
#every song has a name, artist, 
#michael_jackson.billie_jean.genre
#Hey MJ what are all of your songs -- gives an array of songs
#now that I'm going through array 1 at a time, what's your genre
#
#
#

