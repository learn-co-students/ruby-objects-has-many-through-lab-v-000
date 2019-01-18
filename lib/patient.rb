class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
    appointments.collect {|a| a.doctor}
  end
end
