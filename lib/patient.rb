class Patient 
    attr_accessor :doctor
    attr_writer :new_appointment, :date
    
    @@all = []
    
    def initialize(name) 
        @name = name
        @doctors = doctors
        @@all << self        
    end

    def self.all 
        @@all
    end
    def new_appointment(doctor,date)
      appt = Appointment.new(self, doctor, date)
        appt
    end

    def appointments
        Appointment.all.select do|appointment|
          appointment.patient == self
        end
    end
    def doctors 
        appointments.collect do|appointment|
          appointment.doctor
        end
    end
end