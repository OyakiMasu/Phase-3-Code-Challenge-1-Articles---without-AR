require 'pry'

class Magazine

    attr_writer :name, :category

    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    def self.all
        @@all
    end

end

vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")


binding.pry
