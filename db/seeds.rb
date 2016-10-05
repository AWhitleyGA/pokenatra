require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/team'
require_relative '../models/trainer'
require_relative '../models/pokemon'


Team.destroy_all
Team.create(name: "Mystic", color: "blue", img_url: "http://rainbowfilter.io/images/filters/team-mystic/banner.png?v=2")
Team.create(name: "Valor", color: "red", img_url: "https://d2w04addmnh2aq.cloudfront.net/api/file/T8K26iwsTbitvTgl3ckn/convert?fit=max&align=faces")
Team.create(name: "Instict", color: "yellow", img_url: "http://photos2.meetupstatic.com/photos/event/1/d/0/e/highres_452107438.jpeg")


Trainer.destroy_all
Trainer.create(name: "Ash", team_id: 1, img_url: "http://vignette1.wikia.nocookie.net/erbparodies/images/f/f2/200px-Ash_anime.png/revision/latest?cb=20130618174900")
Trainer.create(name: "Andy", team_id: 1, img_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/10350337_10203876141036256_6636373977854547620_n.jpg?oh=c551f1207bbd6404ff084c37ab06f623&oe=586741E5")
Trainer.create(name: "Misty", team_id: 2, img_url: "https://lh5.googleusercontent.com/-yWzKXbmMwGc/VSma-nEZA2I/AAAAAAAAAFM/6uSdbvWOrLs/s800/misty.png")
Trainer.create(name: "Kevin", team_id: 2, img_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/10533462_10204548852905072_8524963123306447949_n.jpg?oh=a797efb6ff48c574c79a17617d4ead8f&oe=5868665C")
Trainer.create(name: "Brock", team_id: 3, img_url: "http://orig07.deviantart.net/fa8e/f/2014/225/5/1/brock_vector_01_by_ubro-d7um0kh.png")
Trainer.create(name: "Michael", team_id: 3, img_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/13494880_10153800882503790_7838532929763545665_n.jpg?oh=ac6b2a019e247050a2745643cf33b076&oe=58AB7A0A")


Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", trainer_id: 1, img_url: "https://img.pokemondb.net/artwork/charmander.jpg")
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", trainer_id: 2, img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", trainer_id: 3, img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", trainer_id: 4, img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg")
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", trainer_id: 5, img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", trainer_id: 6, img_url: "https://img.pokemondb.net/artwork/nidoking.jpg")
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", trainer_id: 2, img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", trainer_id: 2, img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")
