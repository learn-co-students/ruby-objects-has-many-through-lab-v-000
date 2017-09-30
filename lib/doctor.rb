class Doctor
  attr_accessor :appointments, :name

  def initialize(name)
    @name=name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |a|
      a.patient
    end
  end

end
