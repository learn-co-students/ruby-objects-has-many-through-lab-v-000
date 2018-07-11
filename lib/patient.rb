class Patient

attr_accessor :name, :appointments, :doctor

@@all = []

def initialize(name)
  @name = name
  @appointments = []
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

  def new_appointment(doctor, date)
    new_object = Appointment.new(self, doctor, date)
    @appointments << new_object
    new_object
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end



end
