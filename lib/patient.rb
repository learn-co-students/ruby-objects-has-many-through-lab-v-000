class Patient
  attr_accessor :name, :appointment

  # Patient #new initializes with a name
  def initialize(name)
    @name = name
    @appointments = []
  end

  # Patient #add_appointment takes in an argument of an apppointment and adds that appointment to it's list of appointments and tells that appointment it belongs to the patient
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end
  # Patient #doctors has many doctors through appointments
  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
