class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient_name, date)
    appointment = Appointment.new(date, self, patient_name)
    patient = Patient.new(patient_name)
    @appointments << appointment
    appointment
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      # binding.pry
      appointment.patient
    end
  end
end
