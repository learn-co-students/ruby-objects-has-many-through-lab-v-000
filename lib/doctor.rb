class Doctor

  attr_accessor :appointments, :doctor, :patients
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt_obj)
    @appointments << appt_obj
    appt_obj.doctor = self
  end

  def patients
    @appointments.collect do |appt|
      appt.patient
    end
  end

end
