class Patient
    
    attr_accessor :name, :appointments, :doctors
    
    def initialize(name)
        @name = name
        @appointments = %w[]
        @doctors = %w[]
    end
    
    def add_appointment(appointment)
        @appointments << appointment
        appointment.patient = self
        @doctors << appointment.doctor 
        appointment.doctor.patients << self
    end
    
end