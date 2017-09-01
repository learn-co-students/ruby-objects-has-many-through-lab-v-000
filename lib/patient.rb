class Patient

  attr_accessor :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_obj)
    self.appointments << appointment_obj
    appointment_obj.patient = self
  end

  def doctors
    self.appointments.collect do |appointment_obj|
      appointment_obj.doctor
    end
  end
end
