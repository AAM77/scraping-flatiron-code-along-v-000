class Course
  attr_accessor :title, :schedule, :description
  
  @@all = []
  
  def initialize
    @@all << self
  end # initialize
  
  def self.all
    @@all
  end # all
  
  def self.reset_all
    self.all.clear
  end # reset_all
  
  
    
end # class Course