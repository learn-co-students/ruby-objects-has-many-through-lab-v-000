class Doctor
#-----------------------------------------------------------------------------
#vars and macros
attr_accessor :name, :appointments

#-----------------------------------------------------------------------------
#instance
def initialize (name)
            @name = name
            @appointments = []
end

def add_appointment(appointment)
            if !@appointments.include?(appointment)
                @appointments << appointment
                appointment.doctor = self
            end
end

def patients
@appointments.collect{|appointment| appointment.patient}

end



#-----------------------------------------------------------------------------
#class

end