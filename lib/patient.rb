class Patient

  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    doctors << doctor
    appointments << appointment
    doctor.appointments << appointment
    doctor.patients << self
    appointment
  end


end
