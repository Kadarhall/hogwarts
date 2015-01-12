class Student < ActiveRecord::Base
  belongs_to :house

  before_save :student_house

  def student_house
  	self.house = House.all.sample
  end

end