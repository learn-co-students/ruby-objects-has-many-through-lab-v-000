class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    # iterate through this patient's appointments array.  take each appointment and determine who that doctor is.
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end



end
