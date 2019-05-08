require'pry'

 class Patient
  attr_accessor :name, :doctor

   @@all = []

   def initialize(name)
    @name = name
    @@all<< self
  end

  def self.all
    @@all
    end

   def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

   def appointments
    Appointment.all.select { |appointment| appointment.patient == self}
  end

   def doctors
    appointments.map { |patient| patient.doctor }
  end
 end
