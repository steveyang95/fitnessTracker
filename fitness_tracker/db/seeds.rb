# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Animal.delete_all
animal_list = [
	["Giraffe", "The giraffe (Giraffa camelopardalis) is an African even-toed ungulate mammal, the tallest living terrestrial animal and the largest ruminant. Its species name refers to its camel-like shape and its leopard-like colouring.", 588, 1192],
	["Lion", "The lion (Panthera leo) is one of the big cats in the genus Panthera and a member of the family Felidae. The commonly used term African lion collectively denotes the several subspecies found in Africa. With some males exceeding 250 kg (550 lb) in weight,[4] it is the second-largest living cat after the tiger. Wild lions currently exist in sub-Saharan Africa and in India (where an endangered remnant population resides in Gir Forest National Park).", 300, 200],
	["Golden Retriever", 'The Golden Retriever is a sturdy, medium-large sized dog. The skull is broad and the muzzle is straight, tapering slightly with a well-defined stop. The nose is black or a brownish black. The teeth meet in a scissors bite. The medium to large eyes are dark brown.', 61, 36]
]
animal_list.each do |name, description, height, weight|
	Animal.create!(name: name, description: description, height: height, weight: weight)
end