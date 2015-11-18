


class Patient
  attr_accessor :name, :appointments

  def initialize(n)
    @name = n
    @appointments = []
  end

  def add_appointment(appointment_inst)
    @appointments << appointment_inst
    appointment_inst.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect{|appt| appt.doctor}
  end
end
