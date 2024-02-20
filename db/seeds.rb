puts "Destroy all data"

Ranking.destroy_all
Character.destroy_all
Dungeon.destroy_all
Kind.destroy_all

puts "Create kinds"
Dj2s    =  Kind.create(name: "Donjon 2 salles")
Dj3s    =  Kind.create(name: "Donjon 3 salles")
Dj4s    =  Kind.create(name: "Donjon 4 salles")
Dj3j    =  Kind.create(name: "Donjon 3 Joueurs")
Djbd    =  Kind.create(name: "Brèche Dimensionnelle")
Djbdu   =  Kind.create(name: "Brèche Dimensionnelle Ultime")
Djbu    =  Kind.create(name: "Boss Ultime")
Djbus   =  Kind.create(name: "Boss Ultime à Score")

puts "Create dungeons"
Dungeon.create(name: "Mère Michou", modulation: 20, kind: Dj3j)
Dungeon.create(name: "Montagne Adezieu", modulation: 50, kind: Dj4s)
Dungeon.create(name: "Glaglacier Cornu", modulation: 110, kind: Dj2s)
Dungeon.create(name: "Jawdin de la Weine", modulation: 140, kind: Dj3s)

# TO_DO
# A SUPPRIMER UNE FOIS EN PROD
puts "Create characters"

Character.create(name: "Suedama", level: 153)
Character.create(name: "Nico Moneda", level: 185)
Character.create(name: "José Ynequaine", level: 154)
 
puts "Create rankings"
Ranking.create(stasis: 4, character: Character.where(name: "Suedama").first, dungeon: Dungeon.where(name: "Mère Michou").first)
Ranking.create(stasis: 4, character: Character.where(name: "Suedama").first, dungeon: Dungeon.where(name: "Jawdin de la Weine").first)
Ranking.create(stasis: 3, character: Character.where(name: "Suedama").first, dungeon: Dungeon.where(name: "Glaglacier Cornu").first)
Ranking.create(stasis: 7, character: Character.where(name: "Suedama").first, dungeon: Dungeon.where(name: "Montagne Adezieu").first)
Ranking.create(stasis: 2, character: Character.where(name: "Nico Moneda").first, dungeon: Dungeon.where(name: "Mère Michou").first)
Ranking.create(stasis: 5, character: Character.where(name: "Nico Moneda").first, dungeon: Dungeon.where(name: "Glaglacier Cornu").first)
Ranking.create(stasis: 3, character: Character.where(name: "Nico Moneda").first, dungeon: Dungeon.where(name: "Jawdin de la Weine").first)
Ranking.create(stasis: 2, character: Character.where(name: "Nico Moneda").first, dungeon: Dungeon.where(name: "Montagne Adezieu").first)
