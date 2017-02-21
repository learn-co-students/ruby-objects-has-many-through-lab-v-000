class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song #try self; pretty sure it should fail (it did).
    song.artist = self
  end

  def songs #satisfies "Artist has many songs" req
    @songs
  end

  def genres #has many genres through songs. this is the same as:
    @songs.collect do |song|                                     #genarr=[]
      song.genre                                                 #self.songs.each do |songs|
    end                                                             #genarr << songs.genre
  end                                                             #return genarr
                                                                  #end
end
