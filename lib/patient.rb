class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)

  end

  def appointments
    apt = Appointment.all
    apt.select {|appointment| appointment.patient == self}
  end

  def doctors
    self.appointments.collect {|apt| apt.doctor}
  end
end
