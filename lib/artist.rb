require 'pry'
 class Artist

      attr_accessor :name

      def initialize(name)
        @name = name
        @songs = []
      end


      def add_song(song)
        #adds a new song to the artist's @songs array and
        # tells that song that it belongs to the artist
        @songs << song
        song.artist = self
      end

      def songs
          @songs
      end

      def genres  # has many genres, through songs
          self.songs.collect do |song|
          song.genre
      end
    end
 end
