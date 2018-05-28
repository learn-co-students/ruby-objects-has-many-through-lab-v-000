class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    self.appointments.map {|appt| appt.doctor }
  end
end
