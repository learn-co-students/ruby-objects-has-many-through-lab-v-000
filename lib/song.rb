class Song

      attr_accessor :artist, :genre

  def initialize(name, genre)
		@name = name
		@genre = genre	#associate a song to a genre

		# associate this song to the genres tracker
			# in Genre class
			genre.add_song(self)
end
end