class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string      :title
      t.text        :description
      t.datetime    :deadline
      t.integer     :status # todo, doing, done...
      t.references  :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
