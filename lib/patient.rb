class Patient
  
  attr_accessor :name, :doctor
  
  def initialize(name)
    @name = name
    doctor.patients << self
  end

end