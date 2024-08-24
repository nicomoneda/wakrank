puts "Destroy all data except users, characters and rankings"

Dungeon.destroy_all
Kind.destroy_all
CharacterClass.destroy_all

puts "Create kinds"
d2s    =  Kind.create(name: "Donjon 2 salles")
d3s    =  Kind.create(name: "Donjon 3 salles")
d4s    =  Kind.create(name: "Donjon 4 salles")
d3j    =  Kind.create(name: "Donjon 3 Joueurs")
dbd    =  Kind.create(name: "Brèche Dimensionnelle")
dbdu   =  Kind.create(name: "Brèche Dimensionnelle Ultime")
dbu    =  Kind.create(name: "Boss Ultime")
dbus   =  Kind.create(name: "Boss Ultime à Score")

puts "Create classes"
CharacterClass.create(name: "Féca",         imgSrc: "classes/logo-feca.png")
CharacterClass.create(name: "Osamodas",     imgSrc: "classes/logo-osamodas.png")
CharacterClass.create(name: "Enutrof",      imgSrc: "classes/logo-enutrof.png")
CharacterClass.create(name: "Sram",         imgSrc: "classes/logo-sram.png")
CharacterClass.create(name: "Xélor",        imgSrc: "classes/logo-xelor.png")
CharacterClass.create(name: "Ecaflip",      imgSrc: "classes/logo-ecaflip.png")
CharacterClass.create(name: "Eniripsa",     imgSrc: "classes/logo-eniripsa.png")
CharacterClass.create(name: "Iop",          imgSrc: "classes/logo-iop.png")
CharacterClass.create(name: "Crâ",          imgSrc: "classes/logo-cra.png")
CharacterClass.create(name: "Sadida",       imgSrc: "classes/logo-sadida.png")
CharacterClass.create(name: "Sacrieur",     imgSrc: "classes/logo-sacrieur.png")
CharacterClass.create(name: "Pandawa",      imgSrc: "classes/logo-pandawa.png")
CharacterClass.create(name: "Roublard",     imgSrc: "classes/logo-roublard.png")
CharacterClass.create(name: "Zobal",        imgSrc: "classes/logo-zobal.png")
CharacterClass.create(name: "Ouginak",      imgSrc: "classes/logo-ouginak.png")
CharacterClass.create(name: "Steamer",      imgSrc: "classes/logo-steamer.png")
CharacterClass.create(name: "Eliotrope",    imgSrc: "classes/logo-eliotrope.png")
CharacterClass.create(name: "Huppermage",   imgSrc: "classes/logo-huppermage.png")

puts "Create dungeons"
Dungeon.create(name: "Chez la Mère Michou",                     modulation: 20,     kind: d3j,  imgSrc: "bosses/117601816.w200h.png")     
Dungeon.create(name: "Pâturage des Bouftous",                   modulation: 20,     kind: d3s,  imgSrc: "bosses/100200044.w200h.png")     
Dungeon.create(name: "Le Tofulailler",                          modulation: 20,     kind: d3s,  imgSrc: "bosses/100100050.w200h.png")
Dungeon.create(name: "Larventura",                              modulation: 20,     kind: d4s,  imgSrc: "bosses/101402157.w200h.png")     
puts "DJ20 done"

Dungeon.create(name: "Donjon des Abraknes",                     modulation: 35,     kind: d3s,  imgSrc: "bosses/182804107.w200h.png")     
Dungeon.create(name: "Le Caveau Relevé",                        modulation: 35,     kind: d3s,  imgSrc: "bosses/158102793.w200h.png")     
Dungeon.create(name: "Piou Lahoupe",                            modulation: 35,     kind: d3s,  imgSrc: "bosses/101501187.w200h.png")     
Dungeon.create(name: "Brèche de Tainéla",                       modulation: 35,     kind: dbd,  imgSrc: "interface/breche_classique.png")
puts "DJ35 done"

Dungeon.create(name: "Le Papaturage Royal",                     modulation: 50,     kind: d3s,  imgSrc: "bosses/121802271.w200h.png")     
Dungeon.create(name: "La Montagne Adezieu",                     modulation: 50,     kind: d4s,  imgSrc: "bosses/129002198.w200h.png")     
Dungeon.create(name: "Les Champs Pourchan",                     modulation: 50,     kind: d3s,  imgSrc: "bosses/101601726.w200h.png")     
Dungeon.create(name: "La Tour Minérale",                        modulation: 50,     kind: d3j,  imgSrc: "bosses/193804651.w200h.png")     
Dungeon.create(name: "Donjon Équipage du poulpe",               modulation: 50,     kind: d2s,  imgSrc: "bosses/1109805376.w200h.png")     
Dungeon.create(name: "Donjon Morts-Brûlés",                     modulation: 50,     kind: d3s,  imgSrc: "bosses/1110005382.w200h.png")     
puts "DJ50 done"

Dungeon.create(name: "L'Antre Oubliée",                         modulation: 65,     kind: d2s,  imgSrc: "bosses/158102768.w200h.png")     
Dungeon.create(name: "Donjon Bwork",                            modulation: 65,     kind: d3s,  imgSrc: "bosses/158402774.w200h.png")     
Dungeon.create(name: "La Skouale Sèche",                        modulation: 65,     kind: d3s,  imgSrc: "bosses/135902197.w200h.png")     
Dungeon.create(name: "Donjon Mollusky",                         modulation: 65,     kind: d3s,  imgSrc: "bosses/122102178.w200h.png")     
Dungeon.create(name: "Tour des Miss Moches",                    modulation: 65,     kind: d3j,  imgSrc: "bosses/104000326.w200h.png")
Dungeon.create(name: "Kokokolantha",                            modulation: 65,     kind: d4s,  imgSrc: "bosses/135501703.w200h.png")     
Dungeon.create(name: "Château des Cwabe",                       modulation: 65,     kind: d3s,  imgSrc: "bosses/132602285.w200h.png")     
Dungeon.create(name: "Donjon Marteaux-Aigris",                  modulation: 65,     kind: d3s,  imgSrc: "bosses/1110205388.w200h.png")
puts "DJ65 done"

Dungeon.create(name: "Les Ratacombes",                          modulation: 80,     kind: d2s,  imgSrc: "bosses/107702313.w200h.png")     
Dungeon.create(name: "Antre d'Excarnus",                        modulation: 80,     kind: dbu,  imgSrc: "bosses/138901819.w200h.png")
Dungeon.create(name: "Temple du Grand Orrok",                   modulation: 80,     kind: d2s,  imgSrc: "bosses/173803587.w200h.png")     
Dungeon.create(name: "La Corbeau-Cave",                         modulation: 80,     kind: d3s,  imgSrc: "bosses/173603696.w200h.png")     
Dungeon.create(name: "Truchière Abandonnée",                    modulation: 80,     kind: d3s,  imgSrc: "bosses/128802273.w200h.png")     
Dungeon.create(name: "Domaine du Petit Groin",                  modulation: 80,     kind: d3s,  imgSrc: "bosses/100701727.w200h.png")     
Dungeon.create(name: "Palais du Tsu",                           modulation: 80,     kind: d3s,  imgSrc: "bosses/100601278.w200h.png")     
Dungeon.create(name: "Donjon Mulou",                            modulation: 80,     kind: d4s,  imgSrc: "bosses/105501792.w200h.png")     
Dungeon.create(name: "Donjon Arakne",                           modulation: 80,     kind: d3s,  imgSrc: "bosses/1103805107.w200h.png")
Dungeon.create(name: "Brèche de Sufokia",                       modulation: 80,     kind: dbd,  imgSrc: "interface/breche_classique.png")
puts "DJ80 done"

Dungeon.create(name: "Sliptorium",                              modulation: 95,     kind: d2s,  imgSrc: "bosses/138601786.w200h.png")     
Dungeon.create(name: "Le Misolé",                               modulation: 95,     kind: d3s,  imgSrc: "bosses/177103735.w200h.png")     
Dungeon.create(name: "Château de Wagnar",                       modulation: 95,     kind: d3s,  imgSrc: "bosses/140501836.w200h.png")     
Dungeon.create(name: "Académie Trool",                          modulation: 95,     kind: d3j,  imgSrc: "bosses/152602443.w200h.png")     
Dungeon.create(name: "Le Hammamamoule",                         modulation: 95,     kind: d3s,  imgSrc: "bosses/152802464.w200h.png")     
Dungeon.create(name: "Caverne des Slekymoses",                  modulation: 95,     kind: d2s,  imgSrc: "bosses/140001837.w200h.png")     
Dungeon.create(name: "Scarrière Abandonnée",                    modulation: 95,     kind: d3s,  imgSrc: "bosses/128301738.w200h.png")     
Dungeon.create(name: "Nécropoil de Morbax",                     modulation: 95,     kind: d4s,  imgSrc: "bosses/104701707.w200h.png")
Dungeon.create(name: "Antre du Meulou",                         modulation: 95,     kind: dbu,  imgSrc: "bosses/105501794.w200h.png")
puts "DJ95 done"

Dungeon.create(name: "Repaire des Super-Vilains",               modulation: 110,    kind: d3j,  imgSrc: "bosses/153902714.w200h.png")     
Dungeon.create(name: "L'Arène Dansante",                        modulation: 110,    kind: d3s,  imgSrc: "bosses/153302469.w200h.png")     
Dungeon.create(name: "Le Glaglacier Cornu",                     modulation: 110,    kind: d2s,  imgSrc: "bosses/150702363.w200h.png")     
Dungeon.create(name: "Niche du Yech'Ti'Wawa",                   modulation: 110,    kind: d2s,  imgSrc: "bosses/151002368.w200h.png")     
Dungeon.create(name: "Donjon Gelée",                            modulation: 110,    kind: d3s,  imgSrc: "bosses/1300035.w200h.png")     
Dungeon.create(name: "Antre du Corbeau Noir",                   modulation: 110,    kind: dbu,  imgSrc: "bosses/101101150.w200h.png")
Dungeon.create(name: "Repaire des Magik Riktus",                modulation: 110,    kind: d3s,  imgSrc: "bosses/120504520.w200h.png")     
Dungeon.create(name: "Antre du Boufrog",                        modulation: 110,    kind: dbu,  imgSrc: "bosses/100200042.w200h.png")
Dungeon.create(name: "Chuchobase",                              modulation: 110,    kind: d4s,  imgSrc: "bosses/145102100.w200h.png")
puts "DJ110 done"

Dungeon.create(name: "Antre du Dragon-Cochon",                  modulation: 125,    kind: dbu,  imgSrc: "bosses/143602430.w200h.png")     
Dungeon.create(name: "Le Pot d'Hagën-Glass",                    modulation: 125,    kind: d3s,  imgSrc: "bosses/149702343.w200h.png")     
Dungeon.create(name: "Aile de l'Ambassadrice",                  modulation: 125,    kind: d2s,  imgSrc: "bosses/150002348.w200h.png")     
Dungeon.create(name: "La Tour Gelée",                           modulation: 125,    kind: d3s,  imgSrc: "bosses/150402354.w200h.png")     
Dungeon.create(name: "Donjon Cacterre",                         modulation: 125,    kind: d2s,  imgSrc: "bosses/160802972.w200h.png")     
Dungeon.create(name: "Fosse du Tourmenteur",                    modulation: 125,    kind: d3j,  imgSrc: "bosses/127802827.w200h.png")     
Dungeon.create(name: "Caverne Smarrante",                       modulation: 125,    kind: d3s,  imgSrc: "bosses/187704231.w200h.png")     
Dungeon.create(name: "Donjon Flaqueux",                         modulation: 125,    kind: d2s,  imgSrc: "bosses/122602272.w200h.png")     
Dungeon.create(name: "La Pichine",                              modulation: 125,    kind: d4s,  imgSrc: "bosses/131501696.w200h.png")
Dungeon.create(name: "Brèche de Frigost",                       modulation: 125,    kind: dbdu, imgSrc: "interface/breche_ultime.png")
Dungeon.create(name: "Brèche d'Amakna",                         modulation: 125,    kind: dbd,  imgSrc: "interface/breche_classique.png")
puts "DJ125 done"

Dungeon.create(name: "Sanctuaire de Mihmol",                    modulation: 140,    kind: d3j,  imgSrc: "bosses/127803048.w200h.png")     
Dungeon.create(name: "Donjon Noirespore",                       modulation: 140,    kind: d2s,  imgSrc: "bosses/161102977.w200h.png")     
Dungeon.create(name: "Domaine de la Trouffe Salée",             modulation: 140,    kind: d3s,  imgSrc: "bosses/187404254.w200h.png")     
Dungeon.create(name: "Donjon Abraknyde",                        modulation: 140,    kind: d3s,  imgSrc: "bosses/104804874.w200h.png")     
Dungeon.create(name: "Compost du Grand Potofeu",                modulation: 140,    kind: d2s,  imgSrc: "bosses/1111705471.w200h.png")     
Dungeon.create(name: "Palais Lenald",                           modulation: 140,    kind: d4s,  imgSrc: "bosses/154502555.w200h.png")     
Dungeon.create(name: "Jawdin de la Weine",                      modulation: 140,    kind: d3s,  imgSrc: "bosses/155202570.w200h.png")
puts "DJ140 done"

Dungeon.create(name: "Le Vignoble Ignoble",                     modulation: 155,    kind: d4s,  imgSrc: "bosses/182204060.w200h.png")     
Dungeon.create(name: "Donjon Srambad",                          modulation: 155,    kind: d2s,  imgSrc: "bosses/162903080.w200h.png")     
Dungeon.create(name: "Donjon Enutrosor",                        modulation: 155,    kind: d2s,  imgSrc: "bosses/163603094.w200h.png")     
Dungeon.create(name: "Blopéra",                                 modulation: 155,    kind: d2s,  imgSrc: "bosses/195604780.w200h.png")     
Dungeon.create(name: "Source du Mal",                           modulation: 155,    kind: d3s,  imgSrc: "bosses/1102905040.w200h.png")     
Dungeon.create(name: "Brèche de Bonta",                         modulation: 155,    kind: dbd,  imgSrc: "interface/breche_classique.png")     
Dungeon.create(name: "Pyramide de Tal Kasha",                   modulation: 155,    kind: dbu,  imgSrc: "bosses/109605000.w200h.png")     
Dungeon.create(name: "Ruche-mère Sabléoptère",                  modulation: 155,    kind: d2s,  imgSrc: "bosses/1111905478.w200h.png")     
Dungeon.create(name: "Château du Wa Wabbit",                    modulation: 155,    kind: d3j,  imgSrc: "bosses/155602582.w200h.png")     
Dungeon.create(name: "Laboratoire de Womewo",                   modulation: 155,    kind: d3s,  imgSrc: "bosses/155202605.w200h.png")
puts "DJ155 done"

Dungeon.create(name: "Fabrique Méka",                           modulation: 170,    kind: d2s,  imgSrc: "bosses/169303398.w200h.png")     
Dungeon.create(name: "Donjon E-Bou",                            modulation: 170,    kind: d2s,  imgSrc: "bosses/169203399.w200h.png")     
Dungeon.create(name: "Plateau des Hauts-Vents",                 modulation: 170,    kind: dbu,  imgSrc: "bosses/B_Vl02DWAAAnntn.png")     
Dungeon.create(name: "Repaire de Kali",                         modulation: 170,    kind: d3j,  imgSrc: "bosses/187204217.w200h.png")     
Dungeon.create(name: "Donjon Riktus Elite",                     modulation: 170,    kind: d4s,  imgSrc: "bosses/120501771.w200h.png")     
Dungeon.create(name: "Roub'Bar",                                modulation: 170,    kind: d2s,  imgSrc: "bosses/197902018.w200h.png")     
Dungeon.create(name: "Le Lampionnaute",                         modulation: 170,    kind: d4s,  imgSrc: "bosses/129402228.w200h.png")     
Dungeon.create(name: "La Patapoutrerie",                        modulation: 170,    kind: d2s,  imgSrc: "bosses/13482452.w200h.png")  
puts "DJ170 done"

Dungeon.create(name: "Cime du Grand Totem",                     modulation: 185,    kind: dbu,  imgSrc: "bosses/143603870.w200h.png")     
Dungeon.create(name: "Donjon des Crocodailles",                 modulation: 185,    kind: d2s,  imgSrc: "bosses/181103971.w200h.png")     
Dungeon.create(name: "Donjon des Kannivores",                   modulation: 185,    kind: d2s,  imgSrc: "bosses/179403866.w200h.png")     
Dungeon.create(name: "Donjon des Kannibouls",                   modulation: 185,    kind: d2s,  imgSrc: "bosses/179403864.w200h.png")     
Dungeon.create(name: "Donjon des Tropikes",                     modulation: 185,    kind: d2s,  imgSrc: "bosses/179403865.w200h.png")     
Dungeon.create(name: "Cité Interdite",                          modulation: 185,    kind: d3j,  imgSrc: "bosses/1103005046.w200h.png")     
Dungeon.create(name: "Donjon Gerbouille",                       modulation: 185,    kind: d3s,  imgSrc: "bosses/1103905131.w200h.png")     
Dungeon.create(name: "Brèche de Moon",                          modulation: 185,    kind: dbd,  imgSrc: "interface/breche_classique.png") 
puts "DJ185 done"

Dungeon.create(name: "Antre de Nogord L'Ezarélé",               modulation: 200,    kind: dbu,  imgSrc: "bosses/143603433.w200h.png")     
Dungeon.create(name: "Tanière des Blérox",                      modulation: 200,    kind: d2s,  imgSrc: "bosses/186604318.w200h.png")     
Dungeon.create(name: "Volcan Or'Hodruin",                       modulation: 200,    kind: d2s,  imgSrc: "bosses/190004327.w200h.png")     
Dungeon.create(name: "Pointe du Mont Zinit",                    modulation: 200,    kind: dbus, imgSrc: "bosses/1300060.w200h.png")     
Dungeon.create(name: "Sanctuaire des Dragoeufs",                modulation: 200,    kind: d3s,  imgSrc: "bosses/186704400.w200h.png")     
Dungeon.create(name: "La Crête Givrée",                         modulation: 200,    kind: d2s,  imgSrc: "bosses/189004260.w200h.png")     
Dungeon.create(name: "La Tour Minérale",                        modulation: 200,    kind: d3j,  imgSrc: "bosses/193804664.w200h.png")     
Dungeon.create(name: "Tombeau de Pandala",                      modulation: 200,    kind: d2s,  imgSrc: "bosses/1103205059.w200h.png")     
Dungeon.create(name: "Canyon des Fléopards",                    modulation: 200,    kind: d3s,  imgSrc: "bosses/1103105052.w200h.png")     
Dungeon.create(name: "Usine Hibourg",                           modulation: 200,    kind: d3s,  imgSrc: "bosses/1104005137.w200h.png")     
Dungeon.create(name: "Dimension-Objet d'Ombrage",               modulation: 200,    kind: dbu,  imgSrc: "bosses/143604770.w200h.png")
puts "DJ200 done"

Dungeon.create(name: "La Tour Minérale",                        modulation: 215,    kind: d3j,  imgSrc: "bosses/193805229.w200h.png")     
Dungeon.create(name: "Donjon Toundrasoir",                      modulation: 215,    kind: d2s,  imgSrc: "bosses/1106205188.w200h.png")     
Dungeon.create(name: "Donjon Crustargneux",                     modulation: 215,    kind: d2s,  imgSrc: "bosses/1106105182.w200h.png")     
Dungeon.create(name: "Donjon Cagnardeur",                       modulation: 215,    kind: d2s,  imgSrc: "bosses/1106005176.w200h.png")     
Dungeon.create(name: "Donjon Vandaliéné",                       modulation: 215,    kind: d2s,  imgSrc: "bosses/1105905170.w200h.png")     
Dungeon.create(name: "Donjon Plantigarde",                      modulation: 215,    kind: d2s,  imgSrc: "bosses/1106705241.w200h.png")     
Dungeon.create(name: "Donjon Mansot",                           modulation: 215,    kind: d2s,  imgSrc: "bosses/1106805247.w200h.png")     
Dungeon.create(name: "Donjon Carapatte",                        modulation: 215,    kind: d2s,  imgSrc: "bosses/1106605235.w200h.png")     
Dungeon.create(name: "Brèche du Mont Zinit",                    modulation: 215,    kind: dbdu, imgSrc: "interface/breche_ultime.png")     
Dungeon.create(name: "Brèche d'Osamosa",                        modulation: 215,    kind: dbd,  imgSrc: "interface/breche_classique.png") 
puts "DJ215 done"

Dungeon.create(name: "Donjon Phytomorphe",                      modulation: 230,    kind: d2s,  imgSrc: "bosses/1107305277.w200h.png")     
Dungeon.create(name: "Donjon Vidéant",                          modulation: 230,    kind: d2s,  imgSrc: "bosses/1107505283.w200h.png")     
Dungeon.create(name: "Donjon Démhorrible",                      modulation: 230,    kind: d2s,  imgSrc: "bosses/1107705289.w200h.png")     
Dungeon.create(name: "Donjon Égaré ?",                          modulation: 230,    kind: d2s,  imgSrc: "bosses/1107905295.w200h.png")     
Dungeon.create(name: "Donjon Ravageur",                         modulation: 230,    kind: d2s,  imgSrc: "bosses/1108105301.w200h.png")     
Dungeon.create(name: "Palais de Rushu",                         modulation: 230,    kind: dbus, imgSrc: "bosses/1108305306.w200h.png")     
Dungeon.create(name: "Brèche de la Shukrute",                   modulation: 230,    kind: dbd,  imgSrc: "interface/breche_classique.png")     
Dungeon.create(name: "Brèche de la Shukrute",                   modulation: 230,    kind: dbdu, imgSrc: "interface/breche_ultime.png")     
Dungeon.create(name: "Donjon Steamers",                         modulation: 230,    kind: d4s,  imgSrc: "bosses/1110605400.w200h.png")     
Dungeon.create(name: "Donjon Poisseux Abyssaux",                modulation: 230,    kind: d3s,  imgSrc: "bosses/1110405394.w200h.png")     
puts "DJ230 done"
