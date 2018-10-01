class Patient

  attr_accessor :name

  @@all = Array.new


  def initialize(name)
    @name = name
    @@all << self
    @appointments = Array.new
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, doctor, self)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    all_doctors = Array.new
    Appointment.all.each do |appointment|
      if appointment.patient == self
        all_doctors << appointment.doctor
      end
    end
    all_doctors
  end

end
