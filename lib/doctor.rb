class Doctor
  attr_accessor :name
  @@all = []

  def initialized(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date) # date string
    Appointment.new(date, patient, self)
  end

  def appointments

  end

  def patients

  end

end #class end
