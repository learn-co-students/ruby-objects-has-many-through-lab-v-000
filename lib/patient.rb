

class Patient

  attr_accessor :name, :doctor, :appointment

  def initialize(name)
    @name = name
  end

  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select{|appointment|appointment.patient == self}
  end

  def doctors
    appointments.map{|appointment|appointment.doctor}
  end

end
