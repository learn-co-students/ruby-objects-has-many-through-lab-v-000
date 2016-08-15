class Patient
  attr_reader :name, :appointments, :doctors
  def initialize(name)
    @name = name
    @appointments = []
  end

  # takes in an argument of an apppointment and adds that appointment to it's list of appointments and tells that appointment it belongs to the patient

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
