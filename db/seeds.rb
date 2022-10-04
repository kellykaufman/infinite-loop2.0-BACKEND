# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Anxiety.create(life_theme: "Productivity",
 intrusive_thought_or_feeling: "I'm afraid I didn't focus enough today",
 obsessional_theme: "Perfectionism",
 opposite_thought: "I did the best that I could",
 opposite_action: "Refocus on tv",
 timer: 1,
 progress: "ok");

 Anxiety.create(life_theme: "Relationships",
 intrusive_thought_or_feeling: "I'm afraid my friend doesn't like me back.",
 obsessional_theme: "Catastrophizing / Mindreading",
 opposite_thought: "Refocus self & meditate",
 opposite_action: "Breate",
 timer: 15,
 progress: "good");

 Anxiety.create(life_theme: "Relationships",
 intrusive_thought_or_feeling: "I'm afraid my dog won't remember me",
 obsessional_theme: "Catastrophizing",
 opposite_thought: "My Dog will remember me",
 opposite_action: "Hold a teddy bear",
 timer: 1,
 progress: "excellent");

 Anxiety.create(life_theme: "Food",
 intrusive_thought_or_feeling: "I'm afraid I can't have all the cookie dough",
 obsessional_theme: "Catastrophizing",
 opposite_thought: "I can have as much cookie dough as I want",
 opposite_action: "Go get cookie dough",
 timer: 4,
 progress: "wonderful");

 Anxiety.create(life_theme: "Dreams",
 intrusive_thought_or_feeling: "I'm afraid I'll have a bad set",
 obsessional_theme: "Catastrophizing",
 opposite_thought: "It's ok if I have a bad set, it's ok if I have a good set",
 opposite_action: "yoga",
 timer: 7,
 progress: "good");

 Anxiety.create(life_theme: "Mental Health",
 intrusive_thought_or_feeling: "I'm afraid my anxiety will get the best of me",
 obsessional_theme: "Catastrophizing",
 opposite_thought: "I have what it takes to succeed",
 opposite_action: "Dance",
 timer: 19,
 progress: "good");