class Doctor
    attr_accessor :name

    @@allDoctor = []

    def initialize(name)
        @name = name
        @@allDoctor << self
    end

    def new_appointment(patient, date)
        Appointment.new(patient, self, date)
    end

    def appointments
        Appointment.all.select {|i| i.doctor == self}
    end

    def patients
        Appointment.all.map {|i| i.patient}
    end

    def self.all
        @@allDoctor
    end

end
