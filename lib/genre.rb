class Genre

  attr_accessor :name, :songs

  @@all = []
  # def initialize(genre)
  #   genre = Genre.new(genre)
  # end

  # def songs
  #   @@all.map do |song|
  #     if song.genre != nil
  #       song.genre
  #   end
  # end


  def initialize(name)
    @name = name
    @@all << self
  end

end
