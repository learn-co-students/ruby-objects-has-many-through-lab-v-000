class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self 
    end 
  end

  def doctors
    self.appointments.collect do |doc|
      doc.doctor
    end 
  end
 
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  
end



