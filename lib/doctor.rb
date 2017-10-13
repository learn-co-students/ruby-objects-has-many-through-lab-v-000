class Doctor

  attr_accessor :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end

end #class closer
