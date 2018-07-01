class Patient
    attr_accessor :name

    @@allPatients = []

    def initialize(name)
        @name = name
        @@allPatients << self
    end

    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)
    end

    def doctors
        Appointment.all.map {|i| i.doctor}
    end

    def appointments
        Appointment.all.select {|i| i.patient == self}
    end
end
