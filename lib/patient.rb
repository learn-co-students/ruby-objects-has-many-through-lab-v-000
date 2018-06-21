class Patient

  attr_accessor :name


  def initialize (name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
    self.appointments.collect {|d| d.doctor}
  end
end
