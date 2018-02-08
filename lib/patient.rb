class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    # binding.pry
    appointment.patient = self
  end

  def doctors
    @appointments.collect do| date| date.doctor
    end
  end
end
