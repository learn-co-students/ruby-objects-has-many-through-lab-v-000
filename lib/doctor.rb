class Doctor

  attr_accessor :name, :appointments

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def self.all
    @@all
  end

  def patients
    # binding.pry
    Appointment.all.collect do |appointment|
      appointment.patient
    end
  end


end
