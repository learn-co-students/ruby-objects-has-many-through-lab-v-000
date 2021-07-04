class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    appointments.map do |appt|
      appt.doctor
    end
  end
end
