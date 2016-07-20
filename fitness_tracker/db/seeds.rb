# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Animal.delete_all
animal_list = [
	["Mouse","A mouse (plural: mice) is a small rodent characteristically having a pointed snout, small rounded ears, a body-length scaly tail and a high breeding rate. The best known mouse species is the common house mouse (Mus musculus). It is also a popular pet. In some places, certain kinds of field mice are locally common. They are known to invade homes for food and shelter.", 16.9, 0.2],
	["Cat", "The domestic cat[1][5] (Latin: Felis catus) or the feral cat[5][3] (Latin: Felis silvestris catus) is a small, typically furry, carnivorous mammal. They are often called house cats when kept as indoor pets or simply cats when there is no need to distinguish them from other felids and felines.[6] Cats are often valued by humans for companionship and for their ability to hunt vermin. There are more than 70 cat breeds; different associations proclaim different numbers according to their standards.", 22, 5.1],
	["Golden Retriever", 'The Golden Retriever is a sturdy, medium-large sized dog. The skull is broad and the muzzle is straight, tapering slightly with a well-defined stop. The nose is black or a brownish black. The teeth meet in a scissors bite. The medium to large eyes are dark brown.', 61, 20]
]
animal_list.each do |name, description, height, weight|
	Animal.create!(name: name, description: description, height: height, weight: weight)
end