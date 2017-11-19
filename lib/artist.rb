class Artist
attr_accessor :name, :songs, :genres
  def initialize(name)
    self.name = name
    self.songs = []
    self.genres = []
  end

  def add_song(title)
    #temp = Song.new(title)
    self.songs << title
    title.artist = self
    self.genres << title.genre
  end





end
