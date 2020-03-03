class Doctor
  require 'pry'

  attr_accessor :name, :appointments

  def initialize (name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients

    @appointments.collect {|patient| patient.patient}

    # iterates over that doctor's appointments and collects the patient that belongs to each appointment.

  end

end
