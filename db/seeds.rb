Todo.destroy_all
Tag.destroy_all
TodoTag.destroy_all

walk_the_dog = Todo.create!({ title: "Walk the Dog", completed: false })
grab_groceries = Todo.create!({ title: "Grab Groceries", completed: false })
prepared_pod = Todo.create!({ title: "Prepare for Podcast", completed: true })
set_fantasy_football = Todo.create!({ title: "Set Fantasy Football Lineup", completed: true })

chore = Tag.create!({ name: 'Chore'})
work = Tag.create!({ name: 'Work'})

TodoTag.create!({ tag_id: chore.id, todo_id: walk_the_dog.id})
TodoTag.create!({ tag_id: chore.id, todo_id: grab_groceries.id})
TodoTag.create!({ tag_id: chore.id, todo_id: prepared_pod.id})
TodoTag.create!({ tag_id: work.id, todo_id: prepared_pod.id})
