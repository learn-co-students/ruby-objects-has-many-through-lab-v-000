class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, doctor, date)
  end

  def doctors
    Appointment.all.map {|appointment| appointment.doctor}
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient = self}
  end
end
