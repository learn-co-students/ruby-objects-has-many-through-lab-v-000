class Patient
  attr_accessor :name, :appointments

  def initialize(n)
    @name = n
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
  end

  def doctors
    @appointments.collect do |a|
      a.doctor
    end
  end
end

# class Genre
#   attr_accessor :name, :songs
#
#   def initialize(n)
#     @name = n
#     @songs = []
#   end
#
#   def artists
#     @songs.collect do |s|
#       s.artist
#     end
#   end
# end
