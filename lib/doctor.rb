class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(a)
    self.appointments << a
    a.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect do |a|
      a.patient
    end
  end




end

