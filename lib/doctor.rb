class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    unless @appointments.include?(appointment)
      @appointments.push(appointment)
    end
    appointment.doctor = self
    appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end.uniq
  end

end
