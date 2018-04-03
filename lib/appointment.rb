class Appointment
    attr_accessor :title, :doctor, :patient
    
    def initialize(title, doctor)
      @title = title
      doctor.add_appointment(self)
    end
    
    
  
end