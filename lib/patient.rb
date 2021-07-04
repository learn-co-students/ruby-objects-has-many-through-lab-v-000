class Patient
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def doctors
    self.appointments.map { |a| a.doctor }
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
   Appointment.all.select { |appointment| appointment.patient==self }
  end

end