class Doctor
    
    attr_accessor :name, :appointments, :patients
    
    def initialize(name)
        @name = name
        @appointments = %w[]
        @patients = %w[]
    end
    
    def add_appointment(appointment)
        @appointments << appointment
        appointment.doctor = self
    end
    
end