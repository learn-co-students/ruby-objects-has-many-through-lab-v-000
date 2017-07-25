class Doctor
  attr_reader :name
  attr_accessor :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment unless appointments.include?(appointment)
    appointment.doctor = self unless appointment.doctor
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
