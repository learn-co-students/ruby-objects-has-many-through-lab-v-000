class Patient
  attr_accessor :appointments, :doctor
  attr_reader :name

  def initialize(name)
    @name=name
    @appointments=[]
  end

  def add_appointment(appointment)
    @appointments<<appointment
    appointment.patient=self
  end

  def doctors
    @appointments.collect do |appt|
      appt.doctor
    end
  end

end