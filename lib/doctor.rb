class Doctor
  attr_reader :name, :appointments, :patients
  def initialize(name)
    @name=name
    @patients=[]
    @appointments=[]
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect{|appts| appts.patient}
  end

end
