class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    #appointment.doctor = self
  end

  def patients
    patients_array = @appointments.collect {|appointment| appointment.patient}
    patients_array
  end
end
