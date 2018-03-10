class Patient
  attr_accessor :name

    def initialize(name)
      @name = name
      @appointments = []
    end

    def appointments        # => Has Many Relationship
      @appointments
    end

    def add_appointment(ap_obj)   # => Has Many Relationship
      self.appointments << ap_obj
      ap_obj.patient = self
    end

    def doctors   # => Has Many Relationship
      self.appointments.collect do |app|
        app.doctor
    end

    end
end
