class Artist

  attr_reader :name
  @@Artists = []
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self unless song.artist == self
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self unless Artist.find_by_name(self.name)
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.new(name).tap {|artist| artist.save}
    end
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end
