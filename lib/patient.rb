class Patient
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    doctors = []

    self.appointments.each do |appointment|
      doctors << appointment.doctor
    end

    doctors
  end


end
