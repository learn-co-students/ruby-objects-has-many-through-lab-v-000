class Doctor
  attr_accessor :name, :new_appointment
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, date)
    @appointments << date
    self.new(date,patient)
  end

  def appointments
    @appointments
  end

  def patients #has many patients, through appointments
    @appointments.collect {|appointment| appointment.patient}
  end


end
