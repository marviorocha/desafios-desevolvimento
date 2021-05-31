class Activity < ApplicationRecord
    
    belongs_to :project
    validates :name_activity, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    
    scope :finished, ->(project_id) { where("project_id = ? AND finish = true", project_id) }
    scope :no_finished, ->(project_id) { where("project_id = ? AND finish = false", project_id) }
      
    scope :delay_date, ->(date) { where("end_date < ?", date) }
    
end
