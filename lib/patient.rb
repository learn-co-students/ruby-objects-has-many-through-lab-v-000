class Patient
    attr_accessor :name

    def initialize(name)
        @name = name
        @appointments = []
    end

    def appointments
        @appointments
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.patient = self  #tells appointment that it belongs to this patient
    end

    def doctors
        self.appointments.collect do |appointment|
            appointment.doctor  #collects the doctor that belongs to each appointment
        end
    end

end
