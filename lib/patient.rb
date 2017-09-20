class Patient

    attr_accessor :name, :appt_list


    def initialize(name)
      @name = name
      @appt_list = []
    end

    def add_appointment(appt)
      @appt_list << appt
      appt.patient = self

    end


end
