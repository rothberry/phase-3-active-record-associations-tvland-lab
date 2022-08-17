# ! FIRST DELETE/WIPE THE DATABASE

# put the parent relationships at the top, and the children at the bottom
puts "DELETING..."
Network.delete_all
Show.delete_all
Actor.delete_all
Character.delete_all
puts "WIPED DATABASE!"

# ! NEXT CREATE THE HIGHEST MODELS FIRST
# characters need actors & shows first
# show needs a network first
# Therefore
# network => show => actor => characters

puts "CREATING NETWORKS..."
hbo = Network.create(channel: "666", call_letters: "HBO")

puts "CREATING SHOWS..."
adv = Show.create(name: "Adv Time", day: "Friday", season: 7, genre: "Kids", network_id: hbo.id)
dragon = Show.create(name: "House of the Dragon", day: "Sunday", season: 1, genre: "Dragon", network_id: hbo.id)

puts "CREATING ACTORS..."
act1 = Actor.create(first_name: "Pendelton", last_name: "Ward")
act2 = Actor.create(first_name: "Emilia", last_name: "Clarke")

puts "CREATING CHARACTERS..."
Character.create(name: "Finn", catchphrase: "I'm a puncha buns!", actor_id: act1.id, show_id: adv.id)
Character.create(name: "Khalessi", catchphrase: "I'm a punch you for fun!", actor_id: act2.id, show_id: dragon.id)

puts "SEEDED! 🌱"
