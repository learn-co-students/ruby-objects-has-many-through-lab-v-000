class Doctor
attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(date)
     @appointments << Appointment.new(date,self)
  end
end
