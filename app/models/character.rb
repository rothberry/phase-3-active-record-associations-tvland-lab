class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  # def actor
  #   binding.pry
  #   Actor.find(self.actor_id)
  # end

  # def show
  #   Show.find(show_id)
  # end

  # def get_actor_id
  #   @actor_id
  # end
end
