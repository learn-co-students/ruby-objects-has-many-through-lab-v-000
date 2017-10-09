require './lib/artist.rb'
require './lib/song.rb'
require './lib/genre.rb'

rap = Genre.new("rap")
jay_z = Artist.new("Jay-Z")
ninety_nine_problems = Song.new("99 Problems", rap)
