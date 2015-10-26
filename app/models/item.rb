class Item < ActiveRecord::Base
  belongs_to :list

  def checked?
    completed == true
  end

end
