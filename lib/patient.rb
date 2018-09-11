class Patient

  attr_accessor :appointments

  @@all = []

  def initialize(name)
    @appointments = []
    @name = name
    @@all << self 
  end

end
