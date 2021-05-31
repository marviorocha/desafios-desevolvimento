class Project < ApplicationRecord

    has_many :activities, dependent: :destroy

    validates :name, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true

  
 
    def percent_of(n)
    self.to_f / n.to_f * 100.0
    end
 
end
