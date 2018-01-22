class Doctor
  attr_accessor :appointments, :patient
  attr_reader :name

  def initialize(name)
    @name=name
    @appointments=[]
  end

  def add_appointment(appointment)
    @appointments<<appointment
  end

  def patients
    @appointments.collect do |appt|
      appt.patient
    end
  end

end