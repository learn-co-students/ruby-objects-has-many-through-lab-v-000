class Patient


    def initialize(name)
      @name=name
    end

    def new_appointment(doctor, date)
      appointment=Appointment.new(self, doctor, date)
    end

    def appointments
        Appointment.all
    end

    def doctors
      Appointment.all.collect do |appointment|
        appointment.doctor
      end
    end

end
