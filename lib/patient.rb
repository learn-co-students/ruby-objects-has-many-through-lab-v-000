class Patient
  attr_accessor :name, :doctor, :appointment

    def initialize(name)
      @appointments =[]
      @name = name
    end

    def add_appointment(appointment)
      @appointments << appointment
      appointment.patient = self
    end

    def appointments
      @appointments
    end

    def doctors
      appointments.collect { |d| d.doctor}
    end

end
