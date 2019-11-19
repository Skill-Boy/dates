class Contact
  attr_accessor :contacts 
  
  def initialize(contacts)
    @contacts = contacts
  end

  def all_contacts
    @contacts    
  end

  def find_by(key, value)
    contacts.each do |hashes|
      if hashes[key.to_sym] == value
        return hashes
      end  
    end
  end         
end

contacts = [{age: 20, name: "Jose", last_name: "Lopez", gender: :masculino},
            {age: 21, name: "Oscar", last_name: "Perez", gender: :masculino},
            {age: 22, name: "Martha", last_name: "Sanchez", gender: :femenino}]  
contact = Contact.new(contacts)
#contact.all_contacts
contact.find_by("last_name", "Lopez")