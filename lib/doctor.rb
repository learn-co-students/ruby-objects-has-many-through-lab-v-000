class Doctor
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.doctor = self
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end


end



# describe "#add_appointment" do
#   it "adds a new appointment to the doctor's @appointments array and tells that appointment that it belongs to the doctor" do
#     doctor_who = Doctor.new("The Doctor")
#     appointment = Appointment.new("Friday, January 32nd", doctor_who)
#     doctor_who.add_appointment(appointment)
#
#     expect(doctor_who.instance_variable_get(:@appointments)).to include(appointment)
#     expect(appointment.doctor).to eq(doctor_who)
#   end
# end
