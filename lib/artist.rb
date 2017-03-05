class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs #satisfies "Artist has many songs" req
    @songs
  end

  def genres #has many genres through songs. this is the same as:
    @songs.collect {|song| song.genre}                            #genarr=[]
  end                                                             #self.songs.each do |songs|
                                                                    #genarr << songs.genre
end                                                               #return genarr; end
