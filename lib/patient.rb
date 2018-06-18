class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    # iterate through the appointments array & return appointments that belong to a patient
    Appointment.all.select { |a| a.patient == self }
  end

  def doctors
    # iterate over the patient's appointments & collect the doctor that belongs to each appointment
    appointments.map(&:doctor)
  end
end
