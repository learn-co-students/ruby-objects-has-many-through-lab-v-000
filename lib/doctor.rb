class Doctor
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(a)
    @appointments << a
    a.doctor = self
  end
  def appointments
    @appointments
  end
  def patients
    @appointments.collect{|a|a.patient}
  end
end
