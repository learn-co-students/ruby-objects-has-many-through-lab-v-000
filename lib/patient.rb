class Patient
    attr_accessor :appointments, :name

    def initialize(name)
      @name = name
      @appointments = []
    end

    def add_appointment(a)
      self.appointments << a
      a.patient = self
    end

    def doctors
      self.appointments.collect do |a|
        a.doctor
      end
    end

end
