class Contact
  def all_contacts
    contacts = [{age: 20, name: "Jose", last_name: "Lopez", gender: :masculino},
      {age: 21, name: "Oscar", last_name: "Perez", gender: :masculino},
      {age: 22, name: "Martha", last_name: "Sanchez", gender: :femenino}]      
  end

  def find_by(key, value)
    all_contacts.each do |names|
      return names if names[key.to_sym] == value
    end
  end         
end

contact = Contact.new
contact.all_contacts
contact.find_by("last_name", "Lopez")