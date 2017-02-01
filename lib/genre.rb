class Genre

<<<<<<< HEAD
  attr_reader :songs, :name
=======
  attr_accessor :name, :songs
>>>>>>> 26af38357844be5d89e5b4c152abd87dc57247b6

  def initialize(name)
    @name= name
    @songs= []
  end

<<<<<<< HEAD
=======
  def songs
    @songs
  end

>>>>>>> 26af38357844be5d89e5b4c152abd87dc57247b6
  def add_song(song)
    @songs << song
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end
