class Doctor

attr_accessor :appointments, :appointment, :patient, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointment = appointment
    appointment.doctor = self
    @appointments << appointment
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |instance|
      instance.patient
    end
  end

end
