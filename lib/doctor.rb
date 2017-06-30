class Doctor
  attr_accessor :name



  def initialize(name)
    @appointments = []
    @name = name
    @patients = []
  end

  def add_appointment(appoints)
    @appointments << appoints





  end
  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appoint|
      appoint.patient
    end

  end

end
