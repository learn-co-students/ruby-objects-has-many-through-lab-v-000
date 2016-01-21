class Doctor

  attr_accessor :name, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(add)
    @appointments << add
    add.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect do |pat|
      pat.patient
    end
  end


end