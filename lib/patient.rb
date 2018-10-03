class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def new_appointment(doctor, date)
    @appointments << appointment
    appointment.patient = self
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
