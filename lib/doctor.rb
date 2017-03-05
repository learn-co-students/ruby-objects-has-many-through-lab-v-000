class Doctor
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self           #needs :doctor in appointment.rb
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect {|appointment| appointment.patient}
  end

end
