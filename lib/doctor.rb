class Doctor
  attr_accessor :name, :appointment

  # Doctor #new initializes with a name and an empty collection of appointments
  # Doctor #name has a name
  def initialize(name)
    @name = name
    @appointments = []
  end

  # Doctor #add_appointment adds a new appointment to the doctor's @appointments array and tells that appointment that it
  # belongs to the doctor
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  # Doctor #appointments has many appointments
  def appointments
    @appointments
  end

# Doctor #patients has many patients, through appointments
  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
