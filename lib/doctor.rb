class Doctor
    attr_reader :name
    attr_accessor :appointments, :patients
    def initialize(name)
        @name = name
        @appointments = []
        @patients = []
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.doctor = self
    end

    def patients
        @appointments.each do |appointment|
            @patients << appointment.patient
        end
        @patients
    end




end
