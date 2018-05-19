class Doctor

  attr_accessor :name, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
    @date = date
    patient =
  end 

end
