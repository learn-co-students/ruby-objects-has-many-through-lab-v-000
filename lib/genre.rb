class Genre

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.genre = self
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect {|song| song.artist}
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    @@all.detect {|genre| genre.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.new(name).tap {|genre| genre.save}
    end
  end

end
