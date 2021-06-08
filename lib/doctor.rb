class Doctor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    doctor_patients = []
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        doctor_patients << appointment.patient
      end
    end
    doctor_patients
  end

end
