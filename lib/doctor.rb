class Doctor
  attr_accessor :name
  attr_reader :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(app)
    return nil if @appointments.include?(app)
    
    @appointments << app
    app.doctor = self
  end
  
  def patients
    p = @appointments.collect { |e| e.patient }
    p
  end
end