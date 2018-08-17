require "pry"
class Artist
attr_accessor :name
attr_reader  :genres, :songs
@@all=[]

    def initialize(name)
      @name=name
      @songs=[]
      @genres=[]
      @@all << self
    end

    def self.all
      @@all
    end

    def new_song(name, genre)
      song = Song.new(name, self, genre)
      songs << song
      genres << genre
      song
    end






end
