class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self #tell the appointment that it belongs to this patient.
  end

  def doctors #iterates over that patient's appointments and collects the doctor that belongs to each appointment.
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
