class Artist
  attr_accessor :name

    def initialize(name)
      @name = name
      @songs = []
    end

    def songs
      @songs
    end

    def add_song(s_obj)
      @songs << s_obj
      s_obj.artist = self
    end

    def genres
      @songs.collect do |song|
        song.genre
      end

    end


end # => End Artist
