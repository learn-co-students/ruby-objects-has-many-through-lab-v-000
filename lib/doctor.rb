class Doctor
  attr_accessor :name, :appointments

  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @@all<<self
  end

  def self.all
    @@all
  end

  def new_appointment(patient,date)
    Appointment.new(date,patient,self)
  end

  def patients
    @appointments.map{|app| app.patient}
  end
end
