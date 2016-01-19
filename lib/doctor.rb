class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    #tell appointment that it belongs to the doctor
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end