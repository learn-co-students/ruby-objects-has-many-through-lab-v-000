# Doctor
#   #new
#     initializes with a name and an empty collection of appointments
#   #name
#     has a name
#   #add_appointment
#     adds a new appointment to the doctor's @appointments array and tells that appointment that it belongs to the doctor
#   #appointments
#     has many appointments
#   #patients
#     has many patients, through appointments


class Doctor
  attr_accessor :name, :patient, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
#
#
#
#
end
