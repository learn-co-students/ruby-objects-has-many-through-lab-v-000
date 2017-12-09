class Patient

  attr_accessor :name

  def initalize(name)
    @name = name
    @appointments = []

  end

  def add_appointment(appointment)
      @appointments << appointment
      appointment.patient = self
    end

    def appointments
  @appointments
end
end
