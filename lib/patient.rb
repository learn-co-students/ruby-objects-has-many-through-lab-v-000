class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @doctors = []
    @@all <<  self

  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|apt| apt.patient == self}

  end

  def doctors
     appointments.each do |apt|
       @doctors << apt.doctor
     end
     @doctors
    end
end
