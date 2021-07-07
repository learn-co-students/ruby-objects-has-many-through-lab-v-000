class Patient
  attr_reader :name
  @@all=[]
  def initialize(name)
    @name=name
    @@all << self
  end
  def self.all
  @@all
  end
  def appointments
    Appointment.all.select {|date| date.patient==self}
  end
  def doctors
      appointments.map{|date| date.doctor}
  end

  def new_appointment(doctor, date)
  Appointment.new(self, doctor, date)  
  end

end