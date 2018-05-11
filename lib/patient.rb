
class Patient
  attr_accessor :name, :appointments, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(time)
    @appointments << time
    time.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
