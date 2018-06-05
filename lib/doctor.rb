class Doctor
  attr_accessor :name, :date
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select { |app|
      app.doctor == self
    }
  end
  
  def patients
    self.appointments.map { |app|
      app.patient
    }
  end
end