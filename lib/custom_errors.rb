class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
        raise PersonError
      rescue PersonError => error 
        error.message
      end
    else
      person.partner = self
    end
  end

  class PersonError < StandardError
    def message
      "you need to input an instance of a person"
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




