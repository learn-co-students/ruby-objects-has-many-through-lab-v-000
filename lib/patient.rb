class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []

  end

  def add_appointment(appoint)

    @appointments << appoint
    appoint.patient = self

  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appoint|
      appoint.doctor
    end

  end


end
