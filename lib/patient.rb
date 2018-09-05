class Patient

  attr_accessor :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    appointments = Appointment.all.select do |appointment|
      appointment.patient == self
    end
    appointments.map do |patient|
      patient.doctor
    end
  end

end
