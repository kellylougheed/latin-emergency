class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|

      t.string :exercise
      t.string :level

      t.timestamps
    end
  end
end
