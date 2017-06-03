class Patient
    attr_accessor :name

    def initialize(name)
        @name = name
        @appointments = []
        @doctors = []
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.patient = self
    end

    def appointments
        @appointments
    end

    def doctors
        self.appointments.collect do |app|
            app.doctor
        end
    end
end
