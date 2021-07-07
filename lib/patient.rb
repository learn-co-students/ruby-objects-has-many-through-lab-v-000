class Patient
  attr_accessor :name, :doctor, :appointment
  @@all=[]

  def initialize(name)
    @name=name
    @appointments=[]
    @@all<<self
  end

  def new_appointment(doctor,date)
    appointment=Appointment.new(self, doctor, date)
    appointment.patient=self
    @appointments<<appointment
    appointment
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointments|
      appointments.doctor
    end
  end
end
