class Contact
  def self.all
    [{age: 20, name: "Jose", last_name: "Lopez", gender: :masculino},
    {age: 21, name: "Oscar", last_name: "Perez", gender: :masculino},
    {age: 22, name: "Martha", last_name: "Sanchez", gender: :femenino}]      
  end

  def self.find_by(key, value)
    all.each do |names|
      return names if names[key.to_sym] == value
    end
  end         
end

Contact.all
Contact.find_by("last_name", "Lopez")