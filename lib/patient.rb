class Patient
  attr_accessor :name

  @@all =[]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, Doctor)

  end

# def appointments
# @appointments = apointment
#
# end

# def doctors
#
# end
end
