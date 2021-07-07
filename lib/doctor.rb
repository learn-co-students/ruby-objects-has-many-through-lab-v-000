
class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(time)
    @appointments << time
    time.doctor = self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
