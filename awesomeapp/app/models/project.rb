class Project < ApplicationRecord

    has_many :activities, dependent: :destroy

end
