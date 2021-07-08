class Genre
=begin
  Variables
    - name, String
    - songs, Array
    - artists, list of artists
  Functions
    add_song( song_object )
=end
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = Array.new 
    @artists = Array.new
  end

end
