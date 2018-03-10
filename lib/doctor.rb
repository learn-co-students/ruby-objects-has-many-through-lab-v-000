class Doctor
  attr_accessor :name

    def initialize(name)
      @name = name
      @appointments = []
    end

    def appointments      # => Has Many Relationship
      @appointments
    end

    def add_appointment(ap_obj)     # => Has Many Relationship
      self.appointments << ap_obj
      ap_obj.doctor = self
    end

    def patients        # => Has Many Relationship
      self.appointments.collect do |app|
        app.patient
      end
    end

end # => End Doctor class
