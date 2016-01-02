require 'pry'
class Artist
	attr_accessor :name, :songs, :artist

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		song.artist = self
		@songs << song
		@songs
	end

	def genres
		songs.map do |f|
			f.genre
		end
	end
end