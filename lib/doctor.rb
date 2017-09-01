class Doctor

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_obj)
    self.appointments << appointment_obj
    appointment_obj.doctor = self
  end

  def patients
    self.appointments.collect do |appointment_obj|
      appointment_obj.patient
    end
  end
end
