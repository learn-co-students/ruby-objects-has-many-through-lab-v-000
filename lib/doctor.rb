class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    raise AssociationTypeMismatchError, "Appointment class is expected" if !appointment.is_a?(Appointment)
    @appointments << appointment unless self.appointments.include?(appointment)
    appointment.doctor = self
    appointment.patient.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.each {|appointment| @patients << appointment.patient}
    @patients
  end


end
