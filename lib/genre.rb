
class Genre
		# 	# give the Song instances the ability to have name
	attr_accessor :name

		# require name property upon new instance
	def initialize(name)
		@name = name
		# track the songs that have this genre
		@songs = []
	end

	# add a song to genre
	def add_song(song)
		@songs << song
	end

	# return the artists
	def artists
    @songs.collect do |song|
      song.artist
    end
  end

  def songs
    @songs
  end
end
