class Doctor
  attr_reader :appointments, :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    #tell that appointment that it belongs to that doctor
  end

  def patients
    @appointments.collect{|appointment| appointment.patient}
  end
end
