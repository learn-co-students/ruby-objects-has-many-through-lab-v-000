class Patient
  attr_accessor :name, :appointments

  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor,date)
    Appointment.new(date,self,doctor)
  end

  def doctors
    @appointments.map{|app| app.doctor}
  end
end
