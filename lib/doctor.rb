class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # takes in a date and an instance of the Patient class and creates a new appointment.
  # That appointment should know that it belongs to the doctor
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  # iterates through all appointments and finds those belonging to this doctor.
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  # iterates over that doctor's appointments and collects the patient that belongs
  # to each appointment.
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
