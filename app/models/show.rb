class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  # def characters
  #   Character.where(show_id: self.id)
  # end

  def actors_list
    # binding.pry
    # self.characters.map { |c| c.actor.full_name }
    self.actors.map { |actor| actor.full_name }
  end
end
