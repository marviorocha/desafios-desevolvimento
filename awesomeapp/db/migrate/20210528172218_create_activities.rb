class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name_activity
      t.date :start_date
      t.date :end_date
      t.boolean :finish
      t.belongs_to :project, index: true
      t.timestamps
    end
  end
end
