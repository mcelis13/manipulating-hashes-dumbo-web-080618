def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  #contacts['Jon Snow'][:address] = "The Lord Commander's Rooms, The Wall, Westeros"

#iterating through the first level of the hash
  #contacts.each do |person, data|
  #  puts "#{person} : #{data}"
  #end

  #iterating through the second level of the has name, email, knows, favorite_icecream_flavors
  #contacts.each do |person, data|
    #data.each do |attribute, value|
      #puts "#{attribute}: #{value}"
    #end
  #end
  contacts.each do |person, data|
    data.each do |attribute, value|
      if attribute == :favorite_icecream_flavors
        value.each do |flavor|
          if flavor == 'strawberry'
            contacts['Freddy Mercury'][:favorite_icecream_flavors].delete(flavor)
          end
        end
      end
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end
