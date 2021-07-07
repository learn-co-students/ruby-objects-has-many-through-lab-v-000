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
    Appointment.all.collect do |appt| 
      if appt.patient == self 
        appt
      end
    end
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 
  
  def doctors
    Appointment.all.collect do |appt| 
      if appt.patient == self
        appt.doctor 
      end
    end
  end 
end 


  # def appointments
  #   Appointment.all.select { |appointment| appointment.patient == self }
  # end

  # def doctors
  #   appointments.map(&:doctor)
  # end