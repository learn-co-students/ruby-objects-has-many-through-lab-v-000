class Patient
  attr_accessor :appointments 

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect do |appt_obj|
      appt_obj.doctor
    end
  end
end
