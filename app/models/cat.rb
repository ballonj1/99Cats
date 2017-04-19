class Cat < ActiveRecord::Base
  COLORS = %w(red blue yellow green purple )

  validates :birth_date, :name, :description, presence: true
  validates :color, inclusion: { in: COLORS,
    message: "%{value} is not a valid color" }, presence: true
  validates :sex, inclusion: { in: %w{M F}, message: "Please choose 'M' or 'F'"}

  has_many :rental_requests,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

  def age
    Time.now.year - birth_date.year
  end

  def colors
    @colors = COLORS
  end

end
