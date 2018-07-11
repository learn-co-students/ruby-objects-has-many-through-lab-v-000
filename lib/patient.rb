class Patient
  attr_accessor :name, :doctor, :appointment
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def patient(doctor,date)
    appointment=Appointment.new(self,doctor,date)
    @@all<<appointment
    appointment
  end
end
