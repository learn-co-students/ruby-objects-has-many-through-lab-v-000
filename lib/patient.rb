class Patient
  @@all = []
  
  attr_accessor :name
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    create_appointment = Appointment.new(self, date, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointment_list|
      appointment_list.patient == self
    end
  end
  
  def doctors
    self.appointments.collect do |appointment_list|
      appointment_list.doctor
    end
  end
  
  def self.all
    @@all
  end
  
end