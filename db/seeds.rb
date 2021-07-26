# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ishiwatari = Creator.create(name: 'Daisuke Ishiwatari')
sega = Creator.create(name: 'Yu Suzuki, Seiichi Ishii')
arc = Creator.create(name: 'ArcSystems')
sakurai = Creator.create(name: 'Masahiro Sakurai')
noobsaibot = Creator.create(name: 'Ed Boon, John Tobias')
capcom = Creator.create(name: 'Takashi Nishiyama, Hiroshi Matsumoto')

ishiwatari.games.create({title: "GuiltyGear", publisher: "ArcSystems", publish_date: "May 14, 1998‎ - Present", player_count: 16040})
sega.games.create({title: "VirtuaFighter", publisher: "Sega", publish_date: "October 1993", player_count: ""})
arc.games.create({title: "DragonBallFighterZ", publisher: "ArcSystems", publish_date: "January 26, 2018", player_count: 2770})
sakurai.games.create({title: "SuperSmashBros Ultimate", publisher: "Nintendo", publish_date: "January 26, 2018", player_count: ""})
noobsaibot.games.create({title: "MortalKombat 11", publisher: "NeatherRealmStudios", publish_date: "April 23, 2019", player_count: 1084})
capcom.games.create({title: "Street Fighter 5", publisher: "Capcom, Dimps", publish_date: "February 16, 2016 - Present", player_count: 13807})