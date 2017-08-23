# class Doctor
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#     @appointments - []
#   end
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
#     self.appointments.collect do |appointment|
#       appointment.patients
#   end
# end
#
# end


class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self #tell that appointment that it belongs to that doctor.
  end

  def appointments #instance method, #appointments, that returns the @appointments array.
    @appointments
  end

  def patients # iterates over that doctor's appointments and collects the patient that belongs to each appointment.
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
