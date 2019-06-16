class Artist


  attr_accessor :name
# create a class variable
  @@all = []


 #initialize with a name of the artist
 #creates a instance variable to save the name
 # creates an instance variable equals to an empty array
 # push the artist in an class variable array
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

# method to call the all variable
  def self.all
    @@all
    end
# creates a new song with a song name and a genre
# Sets a song to equals to a new song given with a song name, the artist and its genre
# push the song into a song variable
#returns the name of the song

    def new_song(name, genre)
    song = Song.new(name, self, genre)
      @songs << song
      song
    end


#method to display the songs variable
  def songs
    @songs
  end


#method to add song to instance variable
def add_song(song)
  @songs << song
end

#method to call genre on the songs
#calls the artist(self) on its songs and collect the songs
#returns the genre on the song 
  def genres
    self.songs.collect do |song|   #call the artist class on the songs method and collect the song
      song.genre  #then call the genre on the song
    end
  end


end
