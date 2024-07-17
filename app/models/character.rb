# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    my_id = self.id
    movie_id = Character.where({:id => my_id}).at(0).movie_id
    movie = Movie.where({:id => movie_id}).at(0)
    return movie
  end
end
