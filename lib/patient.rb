class Patient
    attr_reader :name
    attr_accessor :appointments, :doctors

    def initialize(name)
        @name = name
        @appointments = []
        @doctors = []
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.patient = self
        @doctors << appointment.doctor
    end

end
