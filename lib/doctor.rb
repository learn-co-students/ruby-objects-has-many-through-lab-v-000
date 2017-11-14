# class Doctor
#   attr_accessor :name, :appointments, :patient
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#   end
#
#   def add_appointment(appointment)
#     @appointments << appointment
#     appointment.doctor = self
#   end
#
#   def appointments
#     @appointments
#   end
#
#   def patients
#     self.appointments.collect { |app_object| app_object.patient }
#   end
#
# end

class Doctor
  attr_accessor :name, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect {|app_objects| app_objects.patient}
  end
end
