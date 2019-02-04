module GuestList
  class Event
    attr_accessor :name
    attr_reader :guests

    def initialize(name)
      @name = name
      @guests = []
    end

    def add_guest new_guest    
      guest_params = []
      guest_params << new_guest.name
      guest_params << new_guest.age
      @guests << guest_params
    end

    def guest_list_sorted_by_name
      @guests.sort_by {|x| x.name }
    end

    # You know what the legal drinking age is, right?
    def guests_allowed_alcoholic_beverages
      answer = @guests.each_with_object([]) {|item, arr| arr << item if item.age >= 21 }
    end

    # comma and newline separated - no more no less
    def print_guest_list_sorted_by_name
      answer = ""
      @guests = @guests.sort_by {|x| x.name }
      @guests.each {|x| answer << (x.name + ",\n") }
      answer.chomp(",\n")
    end

    def oldest_guest
      @guests.sort_by { |x| x.age }.last
    end

    def youngest_guest
      @guests.sort_by { |x| x.age }.first
    end

    def average_guest_age
      answer = @guests.each_with_object([]) {|item, arr| arr << item.age }.inject(:+)/@guests.count
    end
  end
end