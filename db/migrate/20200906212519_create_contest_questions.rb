class CreateContestQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :contest_questions do |t|

      t.timestamps
    end
  end
end
