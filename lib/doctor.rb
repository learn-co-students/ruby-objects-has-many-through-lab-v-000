class Doctor
  attr_accessor :name, :appointments, :patients
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
    @appointments=[]
    @patients=[]
  end

  def new_appointment(date,patient)
    appointment=Appointment.new(patient, self, date)
  end
end
