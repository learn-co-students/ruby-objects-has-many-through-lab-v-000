class Doctor
  attr_accessor :name, :appointments#, #:patients

  def initialize(name)
    @name=name
    @appointments=[]
    #@patients=[]
  end

  def add_appointment(appointment)
    @appointments<<appointment if !@appointments.include?(appointment)
  end

  def patients
    @appointments.collect do |app|
      app.patient
    end

  end

end
