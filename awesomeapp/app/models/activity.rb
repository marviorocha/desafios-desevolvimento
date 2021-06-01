class Activity < ApplicationRecord
    
    belongs_to :project
    validates :name_activity, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    
    scope :finished, ->(project_id) { where("project_id = ? AND finish = true", project_id) }
    scope :no_finished, ->(project_id) { where("project_id = ? AND finish = false", project_id) }
    
    scope :delay_date, ->(project_id, end_date) { where("project_id = ? AND end_date > ?", project_id, end_date) }
      
    def self.date_comparation(start_date, end_date)
        start_date.striftime("%d-%m-%Y") < end_date.striftime("%d-%m-%Y")     
    end

end
