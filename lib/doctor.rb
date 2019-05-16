# first attempt 6/27/17
# class Doctor
#   attr_accessor :name, :appointments, :patients
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#   end
#
#   def add_appointment(appt)
#     appt.doctor = self
#     self.appointments << appt
#   end
#
#   def patients
#     self.appointments.collect {|appt| appt.patient}
#   end
#
# end
class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.doctor = self
  end

  def patients
    appointments.collect {|p| p.patient}
  end

end
