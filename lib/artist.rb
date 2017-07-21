class Artist
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs.push(song) unless self.songs.include?(song)
    song.artist = self unless song.artist
  end

  def genres
    self.songs.collect{|song| song.genre}.uniq
  end
end
