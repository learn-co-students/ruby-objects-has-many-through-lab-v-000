class Patient
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

  def new_appointment(doctor_name, date)
    # binding.pry
    appointment = Appointment.new(date, doctor_name, self)
    doctor = Doctor.new(doctor_name)
    @appointments << appointment
    appointment
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

end
