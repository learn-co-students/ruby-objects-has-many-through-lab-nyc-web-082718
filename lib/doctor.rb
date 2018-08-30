class Doctor
  attr_reader :name, :appointments, :patients
  @@all = []

  def initialize(name)
    @name = name

    @patients = []
    @appointments = []

    @@all << self
  end

  def new_appointment(patient, date)
    new_app = Appointment.new(patient, self, date)
  end

  def self.all
    @@all
  end

end
