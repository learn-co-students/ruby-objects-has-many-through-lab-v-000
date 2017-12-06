require 'pry' 

# create an Artist class 
  class Artist
    # create attr_accessor to access songs array
    attr_accessor :songs, :name
    # create initialize method w/name argument 
    def initialize(name)
  # - initialize with empty array of songs
      @name = name
      @songs = []
    end 
# create name method - no arguments 
    # - shown above in attr_accessor list 
# create add_song method w/(song) argument 
    
    def add_song(song)
  # - this method will add a new song instance to the @songs array
    binding.pry
      @songs << song
#  # - this method will tell the song instance that it belongs to the artist instance
      # figure out what self is
      # song_instance.song_instance - belongs to
      
    end 
# create songs method - no arguments 
  # - displays what songs are included in the songs array

# create genres method - no arguments 
  # - shows relationship between genres and songs
  # - should be able to say 
    
    
    
    
  end 