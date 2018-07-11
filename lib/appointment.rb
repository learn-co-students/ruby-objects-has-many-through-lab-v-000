class Appointment

attr_accessor :patient, :appointment, :doctor

@@all = []

def initialize(patient, doctor, date)
  @patient = patient
  @date = date
  @doctor = doctor

  self.save
  # binding.pry
end

# def self.create
# new_variable = Song.new(@name)
# new_variable.save
# new_variable
# end

  def self.all
    @@all
  end

  def save
  @@all << self
  end


end
