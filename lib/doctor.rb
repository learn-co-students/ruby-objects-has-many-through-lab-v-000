class Doctor

  attr_accessor :name, :appointments
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
    @appointments=[]
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end

end
