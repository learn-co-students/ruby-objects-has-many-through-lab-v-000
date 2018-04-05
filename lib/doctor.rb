class Doctor
  attr_reader :name, :appointments

  def initialize (name)
    @name = name
    @appointments = []
  end

  def add_appointment (appointment)
    appointment.doctor = self   # just to make sure that all my appointments list me a Dr
    appointments.index(appointment) || appointments << appointment
  end

  # because appointment class lets patient be updated on the fly, we
  # generate the patients array based on appointments when asked
  # Assumption is that appointments contains references to all patients
  # (so not like real world where I can have a Dr with no appointment)
  def patients()
    appointments.map { | appointment | appointment.patient}.compact.uniq
  end
end
