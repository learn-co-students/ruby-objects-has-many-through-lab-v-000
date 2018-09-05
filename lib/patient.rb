class Patient
  attr_accessor :name

  def initialize(name)
    @name = name 
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(name, doctor, self)
    appointment
  end
  
 def appointments 
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end