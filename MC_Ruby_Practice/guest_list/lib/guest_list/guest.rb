module GuestList
  class Guest
    attr_reader :name
    attr_reader :age
    
    def initialize(name, age)
      @name = name
      @age = age
    end
  end
end