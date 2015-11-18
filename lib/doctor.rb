

class Doctor
  attr_accessor :name, :patients, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_inst)
    @appointments << appointment_inst
    appointment_inst.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect{|pat| pat.patient}
  end
end