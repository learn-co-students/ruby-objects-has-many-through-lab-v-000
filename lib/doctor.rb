class Doctor

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appoint)
    @appointments << appoint
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect do |appointments|
      appointments.patient
    end
  end
end