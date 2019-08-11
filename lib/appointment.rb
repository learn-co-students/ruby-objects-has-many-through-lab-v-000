class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @doctor.appointments << self
  end
end

# class Song
#   attr_accessor :name, :genre, :artist
#
#   def initialize(n, g)
#     @name = n
#     @genre = g
#     @genre.songs << self
#   end
# end
