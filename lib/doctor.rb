class Doctor
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(date)
    appointment = Appointment.new(date, self)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end


end
