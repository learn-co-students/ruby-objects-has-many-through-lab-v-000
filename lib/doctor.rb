class Doctor
    
    attr_accessor :name, :appointments
    
    def initialize(name)
       @name = name
       @appointments = []
    end
    
    def patients
       @appointments.map {|appointment| appointment.patient} 
    end
    
    def add_appointment(appointment)
        @appointments << appointment
    end
    
    
end