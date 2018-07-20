class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_genre(name, genre)
    Genre.new(name, self, genre)
  end


  def songs
      Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
      songs.map do |song|
        song.artist 
      end
  end





end

=begin
The Genre class needs a class variable @@all that begins as an empty array.
The Genre class needs a class method .all that lists each artist in the class variable.
A genre should be initialized with a name and be saved in the @@all array.
The Genre class needs an instance method, #new_song, that takes in an argument of a name and an artist and creates a new song. That song should know that it belongs to the genre.
The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
=end
