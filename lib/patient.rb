class Patient
  attr_reader :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
  end

  def new_appointment(doctor, date)
    new_app = Appointment.new(self, doctor, date)
  end
end
