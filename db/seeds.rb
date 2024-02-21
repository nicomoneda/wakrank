puts "Destroy all data"

Ranking.destroy_all
Character.destroy_all
Dungeon.destroy_all
Kind.destroy_all

puts "Create kinds"
d2s    =  Kind.create(name: "Donjon 2 salles")
d3s    =  Kind.create(name: "Donjon 3 salles")
d4s    =  Kind.create(name: "Donjon 4 salles")
d3j    =  Kind.create(name: "Donjon 3 Joueurs")
dbd    =  Kind.create(name: "Brèche Dimensionnelle")
dbdu   =  Kind.create(name: "Brèche Dimensionnelle Ultime")
dbu    =  Kind.create(name: "Boss Ultime")
dbus   =  Kind.create(name: "Boss Ultime à Score")

puts "Create dungeons"
Dungeon.create(name: "Chez la Mère Michou",                     modulation: 20, kind: d3j)     
Dungeon.create(name: "Pâturage des Bouftous",                   modulation: 20, kind: d3s)     
Dungeon.create(name: "Le Tofulailler",                          modulation: 20, kind: d3s)
Dungeon.create(name: "Larventura",                              modulation: 20, kind: d4s)     
puts "DJ20 done"

Dungeon.create(name: "Donjon des Abraknes",                     modulation: 35, kind: d3s)     
Dungeon.create(name: "Le Caveau Relevé",                        modulation: 35, kind: d3s)     
Dungeon.create(name: "Piou Lahoupe",                            modulation: 35, kind: d3s)     
Dungeon.create(name: "Brèche de Tainéla",                       modulation: 35, kind: dbd)
puts "DJ35 done"

Dungeon.create(name: "Le Papaturage Royal",                     modulation: 50, kind: d3s)     
Dungeon.create(name: "La Montagne Adezieu",                     modulation: 50, kind: d4s)     
Dungeon.create(name: "Les Champs Pourchan",                     modulation: 50, kind: d3s)     
Dungeon.create(name: "La Tour Minérale",                        modulation: 50, kind: d3j)     
Dungeon.create(name: "Donjon Équipage du poulpe",               modulation: 50, kind: d2s)     
Dungeon.create(name: "Donjon Morts-Brûlés",                     modulation: 50, kind: d3s)     
puts "DJ50 done"

Dungeon.create(name: "L'Antre Oubliée",                         modulation: 65, kind: d2s)     
Dungeon.create(name: "Donjon Bwork",                            modulation: 65, kind: d3s)     
Dungeon.create(name: "La Skouale Sèche",                        modulation: 65, kind: d3s)     
Dungeon.create(name: "Donjon Mollusky",                         modulation: 65, kind: d3s)     
Dungeon.create(name: "Tour des Miss Moches",                    modulation: 65, kind: d3j)
Dungeon.create(name: "Kokokolantha",                            modulation: 65, kind: d4s)     
Dungeon.create(name: "Château des Cwabe",                       modulation: 65, kind: d3s)     
Dungeon.create(name: "Donjon Marteaux-Aigris",                  modulation: 65, kind: d3s)
puts "DJ65 done"

Dungeon.create(name: "Les Ratacombes",                          modulation: 80, kind: d2s)     
Dungeon.create(name: "Antre d'Excarnus",                        modulation: 80, kind: dbu)
Dungeon.create(name: "Temple du Grand Orrok",                   modulation: 80, kind: d2s)     
Dungeon.create(name: "La Corbeau-Cave",                         modulation: 80, kind: d3s)     
Dungeon.create(name: "Truchière Abandonnée",                    modulation: 80, kind: d3s)     
Dungeon.create(name: "Domaine du Petit Groin",                  modulation: 80, kind: d3s)     
Dungeon.create(name: "Palais du Tsu",                           modulation: 80, kind: d3s)     
Dungeon.create(name: "Donjon Mulou",                            modulation: 80, kind: d4s)     
Dungeon.create(name: "Donjon Arakne",                           modulation: 80, kind: d3s)
Dungeon.create(name: "Brèche de Sufokia",                       modulation: 80, kind: dbd)
puts "DJ80 done"

Dungeon.create(name: "Sliptorium",                              modulation: 95, kind: d2s)     
Dungeon.create(name: "Le Misolé",                               modulation: 95, kind: d3s)     
Dungeon.create(name: "Château de Wagnar",                       modulation: 95, kind: d3s)     
Dungeon.create(name: "Académie Trool",                          modulation: 95, kind: d3j)     
Dungeon.create(name: "Le Hammamamoule",                         modulation: 95, kind: d3s)     
Dungeon.create(name: "Caverne des Slekymoses",                  modulation: 95, kind: d2s)     
Dungeon.create(name: "Scarrière Abandonnée",                    modulation: 95, kind: d3s)     
Dungeon.create(name: "Nécropoil de Morbax",                     modulation: 95, kind: d4s)
Dungeon.create(name: "Antre du Meulou",                         modulation: 95, kind: dbu)
puts "DJ95 done"

Dungeon.create(name: "Repaire des Super-Vilains",               modulation: 110, kind: d3j)     
Dungeon.create(name: "L'Arène Dansante",                        modulation: 110, kind: d3s)     
Dungeon.create(name: "Le Glaglacier Cornu",                     modulation: 110, kind: d2s)     
Dungeon.create(name: "Niche du Yech'Ti'Wawa",                   modulation: 110, kind: d2s)     
Dungeon.create(name: "Donjon Gelée",                            modulation: 110, kind: d3s)     
Dungeon.create(name: "Antre du Corbeau Noir",                   modulation: 110, kind: dbu)
Dungeon.create(name: "Repaire des Magik Riktus",                modulation: 110, kind: d3s)     
Dungeon.create(name: "Antre du Boufrog",                        modulation: 110, kind: dbu)
Dungeon.create(name: "Chuchobase",                              modulation: 110, kind: d4s)
puts "DJ110 done"

Dungeon.create(name: "Antre du Dragon-Cochon",                  modulation: 125, kind: dbu)     
Dungeon.create(name: "Le Pot d'Hagën-Glass",                    modulation: 125, kind: d3s)     
Dungeon.create(name: "Aile de l'Ambassadrice",                  modulation: 125, kind: d2s)     
Dungeon.create(name: "La Tour Gelée",                           modulation: 125, kind: d3s)     
Dungeon.create(name: "Donjon Cacterre",                         modulation: 125, kind: d2s)     
Dungeon.create(name: "Fosse du Tourmenteur",                    modulation: 125, kind: d3j)     
Dungeon.create(name: "Caverne Smarrante",                       modulation: 125, kind: d3s)     
Dungeon.create(name: "Donjon Flaqueux",                         modulation: 125, kind: d2s)     
Dungeon.create(name: "La Pichine",                              modulation: 125, kind: d4s)
Dungeon.create(name: "Brèche de Frigost",                       modulation: 125, kind: dbdu)
Dungeon.create(name: "Brèche d'Amakna",                         modulation: 125, kind: dbd)
puts "DJ125 done"

Dungeon.create(name: "Sanctuaire de Mihmol",                    modulation: 140, kind: d3j)     
Dungeon.create(name: "Donjon Noirespore",                       modulation: 140, kind: d2s)     
Dungeon.create(name: "Domaine de la Trouffe Salée",             modulation: 140, kind: d3s)     
Dungeon.create(name: "Donjon Abraknyde",                        modulation: 140, kind: d3s)     
Dungeon.create(name: "Compost du Grand Potofeu",                modulation: 140, kind: d2s)     
Dungeon.create(name: "Palais Lenald",                           modulation: 140, kind: d4s)     
Dungeon.create(name: "Jawdin de la Weine",                      modulation: 140, kind: d3s)
puts "DJ140 done"

Dungeon.create(name: "Le Vignoble Ignoble",                     modulation: 155, kind: d4s)     
Dungeon.create(name: "Donjon Srambad",                          modulation: 155, kind: d2s)     
Dungeon.create(name: "Donjon Enutrosor",                        modulation: 155, kind: d2s)     
Dungeon.create(name: "Blopéra",                                 modulation: 155, kind: d2s)     
Dungeon.create(name: "Source du Mal",                           modulation: 155, kind: d3s)     
Dungeon.create(name: "Brèche de Bonta",                         modulation: 155, kind: dbd)     
Dungeon.create(name: "Pyramide de Tal Kasha",                   modulation: 155, kind: dbu)     
Dungeon.create(name: "Ruche-mère Sabléoptère",                  modulation: 155, kind: d2s)     
Dungeon.create(name: "Château du Wa Wabbit",                    modulation: 155, kind: d3j)     
Dungeon.create(name: "Laboratoire de Womewo",                   modulation: 155, kind: d3s)
puts "DJ155 done"

Dungeon.create(name: "Donjon Méka",                             modulation: 170, kind: d2s)     
Dungeon.create(name: "Donjon E-Bou",                            modulation: 170, kind: d2s)     
Dungeon.create(name: "Plateau des Hauts-Vents",                 modulation: 170, kind: dbu)     
Dungeon.create(name: "Repaire de Kali",                         modulation: 170, kind: d3j)     
Dungeon.create(name: "Donjon Riktus Elite",                     modulation: 170, kind: d4s)     
Dungeon.create(name: "Roub'Bar",                                modulation: 170, kind: d2s)     
Dungeon.create(name: "Le Lampionnaute",                         modulation: 170, kind: d4s)     
Dungeon.create(name: "La Patapoutrerie",                        modulation: 170, kind: d2s)  
puts "DJ170 done"

Dungeon.create(name: "Cime du Grand Totem",                     modulation: 185, kind: dbu)     
Dungeon.create(name: "Donjon des Crocodailles",                 modulation: 185, kind: d2s)     
Dungeon.create(name: "Donjon des Kannivores",                   modulation: 185, kind: d2s)     
Dungeon.create(name: "Donjon des Kannibouls",                   modulation: 185, kind: d2s)     
Dungeon.create(name: "Donjon des Tropikes",                     modulation: 185, kind: d2s)     
Dungeon.create(name: "Cité Interdite",                          modulation: 185, kind: d3j)     
Dungeon.create(name: "Donjon Gerbouille",                       modulation: 185, kind: d3s)     
Dungeon.create(name: "Brèche de Moon",                          modulation: 185, kind: dbd) 
puts "DJ185 done"

Dungeon.create(name: "Antre de Nogord L'Ezarélé",               modulation: 200, kind: dbu)     
Dungeon.create(name: "Tanière des Blérox",                      modulation: 200, kind: d2s)     
Dungeon.create(name: "Volcan Or'Hodruin",                       modulation: 200, kind: d2s)     
Dungeon.create(name: "Pointe du Mont Zinit",                    modulation: 200, kind: dbus)     
Dungeon.create(name: "Sanctuaire des Dragoeufs",                modulation: 200, kind: d3s)     
Dungeon.create(name: "La Crête Givrée",                         modulation: 200, kind: d2s)     
Dungeon.create(name: "La Tour Minérale",                        modulation: 200, kind: d3j)     
Dungeon.create(name: "Tombeau de Pandala",                      modulation: 200, kind: d2s)     
Dungeon.create(name: "Canyon des Fléopards",                    modulation: 200, kind: d3s)     
Dungeon.create(name: "Usine Hibourg",                           modulation: 200, kind: d3s)     
Dungeon.create(name: "Dimension-Objet d'Ombrage",               modulation: 200, kind: dbu)
puts "DJ200 done"

Dungeon.create(name: "La Tour Minérale",                        modulation: 215, kind: d3j)     
Dungeon.create(name: "Donjon Toundrasoir",                      modulation: 215, kind: d2s)     
Dungeon.create(name: "Donjon Crustargneux",                     modulation: 215, kind: d2s)     
Dungeon.create(name: "Donjon Cagnardeur",                       modulation: 215, kind: d2s)     
Dungeon.create(name: "Donjon Vandaliéné",                       modulation: 215, kind: d2s)     
Dungeon.create(name: "Donjon Plantigarde",                      modulation: 215, kind: d2s)     
Dungeon.create(name: "Donjon Mansot",                           modulation: 215, kind: d2s)     
Dungeon.create(name: "Donjon Carapatte",                        modulation: 215, kind: d2s)     
Dungeon.create(name: "Brèche du Mont Zinit",                    modulation: 215, kind: dbdu)     
Dungeon.create(name: "Brèche d'Osamosa",                        modulation: 215, kind: dbd) 
puts "DJ215 done"

Dungeon.create(name: "Donjon Phytomorphe",                      modulation: 230, kind: d2s)     
Dungeon.create(name: "Donjon Vidéant",                          modulation: 230, kind: d2s)     
Dungeon.create(name: "Donjon Démhorrible",                      modulation: 230, kind: d2s)     
Dungeon.create(name: "Donjon Égaré ?",                          modulation: 230, kind: d2s)     
Dungeon.create(name: "Donjon Ravageur",                         modulation: 230, kind: d2s)     
Dungeon.create(name: "Palais de Rushu",                         modulation: 230, kind: dbus)     
Dungeon.create(name: "Brèche de la Shukrute",                   modulation: 230, kind: dbd)     
Dungeon.create(name: "Brèche de la Shukrute",                   modulation: 230, kind: dbdu)     
Dungeon.create(name: "Donjon Steamers",                         modulation: 230, kind: d4s)     
Dungeon.create(name: "Donjon Poisseux Abyssaux",                modulation: 230, kind: d3s)     
puts "DJ230 done"


# TO_DO
# A SUPPRIMER UNE FOIS EN PROD
puts "Create characters"

Character.create(name: "Suedama", level: 153)
Character.create(name: "Nico Moneda", level: 185)
Character.create(name: "José Ynequaine", level: 154)
 
puts "Create rankings"
Ranking.create(stasis: 4, character: Character.where(name: "Suedama").first, dungeon: Dungeon.where(name: "Chez la Mère Michou").first)
Ranking.create(stasis: 4, character: Character.where(name: "Suedama").first, dungeon: Dungeon.where(name: "Jawdin de la Weine").first)
Ranking.create(stasis: 3, character: Character.where(name: "Suedama").first, dungeon: Dungeon.where(name: "Le Glaglacier Cornu").first)
Ranking.create(stasis: 7, character: Character.where(name: "Suedama").first, dungeon: Dungeon.where(name: "La Montagne Adezieu").first)
Ranking.create(stasis: 2, character: Character.where(name: "Nico Moneda").first, dungeon: Dungeon.where(name: "Chez la Mère Michou").first)
Ranking.create(stasis: 5, character: Character.where(name: "Nico Moneda").first, dungeon: Dungeon.where(name: "Le Glaglacier Cornu").first)
Ranking.create(stasis: 3, character: Character.where(name: "Nico Moneda").first, dungeon: Dungeon.where(name: "Jawdin de la Weine").first)
Ranking.create(stasis: 2, character: Character.where(name: "Nico Moneda").first, dungeon: Dungeon.where(name: "La Montagne Adezieu").first)
