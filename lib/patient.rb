class Patient

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :doctor

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def new_appointment(doctor, time)
    Appointment.new(doctor, self, time)
  end

  def appointments
    Appointment.all.select{|apt| apt.patient == self}
  end

  def doctors
    Doctor.all.select{|doc| doc.patients.include?(self)}
  end

end
