class Patient

    attr_accessor :name, :appointments, :doctor

    def initialize(name)
        @name = name
    end
   
    def add_appointment(appointment)
         @appointments << appointment
         appointments.patient = self
    end

    def doctors
        self.appointments.collect do |appointment| 
            appointment.doctor
        end
    end

end