class Author < ApplicationRecord
  def coordinates
    [rand(50), rand(90)]
  end
end
