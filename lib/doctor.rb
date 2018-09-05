class Doctor

  attr_accessor :name, :appointments

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
      appointment.doctor == self
    end
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    appointments = Appointment.all.select do |appointment|
      appointment.doctor == self
    end
    appointments.map do |doctor|
      doctor.patient
    end
  end

end
