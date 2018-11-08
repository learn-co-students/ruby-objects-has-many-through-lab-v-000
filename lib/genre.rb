class Genre
  attr_accessor :name

  @@all = []

  def initialize(genre_name)
    @name = genre_name
    @@all << self
  end

  def self.create(genre)
    if genre.class == Genre
      genre
    else
      if genre.exists?(artist)
        find_genre(genre)
      else
        self.new(genre)
      end
    end
  end

  def find_genre(genre_name)
    Genre.all.detect {|genre| genre.name == genre_name}
  end

  def exists?(genre_name)
    if find_genre(genre_name).nil?
      false
    else
      true
    end
  end

  def self.all
    @@all.uniq
  end

  def songs
    Song.all.select {|song| song.genre if song.genre == self}
  end

  def artists
    Song.all.map {|song| song.artist if song.genre == self}
  end

end
