Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
meta = Company.create(name: "Facebook", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mr = Dev.create(name: "Mr. Meseeks")
gaz =Dev.create(name: "Gazorpazop") #add dev_ids

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "random swag", value: 5, company_id: google.id, dev_id: rick.id )
Freebie.create(item_name: "robot buddy", value: 100, company_id: meta.id, dev_id: morty.id)
Freebie.create(item_name: "cut stickers", value: 14, company_id: dunder.id, dev_id: mr.id)
Freebie.create(item_name: "led mic set", value: 50, company_id: enron.id, dev_id: gaz.id)


#Adam example
# Freebie.create(item_name: "led mic set", value: 50, company_id: enron.id, dev_id:dev.all.sample.id )

puts "Seeding done!"
