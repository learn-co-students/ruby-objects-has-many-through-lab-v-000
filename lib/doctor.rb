class Doctor

  attr_accessor :name, :patient, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    if appointment.is_a?(Appointment)
      @appointments << appointment
    end
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect {|a| a.patient}
  end
end
