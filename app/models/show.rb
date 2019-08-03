class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.actors.collect {|a| a.first_name + " " + a.last_name}
  end 
  
end