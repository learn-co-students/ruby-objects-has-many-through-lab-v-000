class Doctor
  attr_accessor :name, :doctor, :patient

  @@all_doc = []

  def initialize (name)
    @name = name
    @@all_doc << self
  end

  def self.all
    @@all_doc
  end

  def new_appointment (patient, date)
    new_date = Appointment.new(patient, self, date)
    self.appointments.last
  end

  def appointments
    Appointment.all.select do |apt|
      apt.doctor == self
    end
  end

  def patients
    Appointment.all.map do |apt|
      apt.patient
    end
  end

end
