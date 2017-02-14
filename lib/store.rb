class Store < ActiveRecord::Base

  has_many :employees

  validate :clothing, on: :create

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
                               only_integer: true,
                               greater_than_or_equal_to: 0
                            }
  def clothing
    if (!mens_apparel && !womens_apparel)
      errors.add(:base, "#{:mens_apparel} and #{:womens_apparel} can't both be false")
    end
  end

end
