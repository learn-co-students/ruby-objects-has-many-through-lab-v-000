class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(n)
    @name = n
    @appointments = []
  end

  def add_appointment(a)
    @appointments << a
  end

  def patients
    @appointments.collect do |a|
      a.patient
    end
  end
end

# class Artist
#   attr_accessor :name, :songs, :genres
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def add_song(song)
#     @songs << song
#     song.artist = self
#   end
#
#   def genres
#     @songs.collect do |s|
#       s.genre
#     end
#   end
# end
