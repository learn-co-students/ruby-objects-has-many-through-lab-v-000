class Doctor
    attr_accessor :name

    def initialize(name)
        @name = name
        @appointments = []
    end

    def add_appointment(appointment)  #takes instance of Appointment class and adds it to doctors array
        @appointments << appointment
        appointment.doctor = self   #tells appointment that it belongs to that doctor
    end

    def appointments
        @appointments
    end

    def patients    #iterates over doctors appointments and collects the patient that belongs to each appointment
        self.appointments.collect do |appointment|
            appointment.patient
        end
    end
end
