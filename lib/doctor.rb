class Doctor
  attr_accessor :name
  attr_reader :appointments
  def initialize(name)
    @name=name
    @appointments = []
  end
  def add_appointment(appointment)
    self.appointments<<appointment
    appointment.doctor=self
  end
  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
