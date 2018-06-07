class Patient
@@all = []

attr_accessor :name

def self.all
  @@all
end

def initialize(name)
  @name = name
  self.class.all << self
end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date,self,doctor)
  end

  def appointments
    Appointment.all.select do
      |song| song.patient == self
    end
  end

  def doctors
    genres = self.appointments.collect do
      |song| song.doctor
    end
    genres
  end


end
