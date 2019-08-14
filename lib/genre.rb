class Genre

    attr_accessor :songs, :name

    def initialize(name)
      self.name = name
      self.songs = []
    end

    def add_song(song)
      self.songs << song
    end

    def artists
      songs.map do |song|
        song.artist
      end
    end
  end

  
