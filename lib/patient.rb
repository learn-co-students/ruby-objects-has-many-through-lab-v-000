class Patient

  attr_accessor :doctor, :name, :appointment

  @@all_patient = []

  def initialize (name)
    @name = name
    @@all_patient << self
  end

  def self.all
    @@all_patient
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |apt|
      apt.patient == self
    end
  end

  def doctors
    Appointment.all.map do |apt|
      apt.doctor
    end
  end
end
