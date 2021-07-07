class Doctor

  attr_reader :appointments
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end


  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
