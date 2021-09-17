class AddTodoTags < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_tags do |t|
        t.references :todo
        t.references :tag
        t.timestamps
    end
  end
end
