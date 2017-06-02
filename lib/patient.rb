class Patient
    attr_accessor :name, :appointments, :doctors

    def initialize(name)
        @name =name
        @appointments = []
        @doctors = []
    end

    def add_appointment(appointment)
        if !appointments.include?(appointment)
            @appointments << appointment
            appointment.patient = self
            if !doctors.include?(appointment.doctor)
                @doctors << appointment.doctor
                appointment.doctor.patients << self
            end
        end
    end
end
