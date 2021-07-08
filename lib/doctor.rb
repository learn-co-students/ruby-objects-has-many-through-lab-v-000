class Doctor

attr_reader :appointments, :name

  def initialize(name)
   @name = name
   @appointments = []
  end

  def add_appointment(appointment)
    @appointments.push(appointment)
    appointment.doctor = self
  end

  def patients
    @appointments.collect {|appointment| appointment.patient}
  end






end
