class Patient 
  
  attr_accessor :patient_name
  
  @all = [] 
  
  def initialize(patient_name)
    @patient_name = patient_name
    @all << self
  end
  
end