class Doctor
  attr_accessor :name, :patient

  def initialize(name)
    @name = name 
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt

  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect { |pat| pat.patient}
  end

end