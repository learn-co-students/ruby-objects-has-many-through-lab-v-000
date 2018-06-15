class Doctor

  attr_accessor :appointments, :doctor

  @@all=[]
  def initialize(name)
    @name=name
    @@all<<self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date,self,patient)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor==self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
