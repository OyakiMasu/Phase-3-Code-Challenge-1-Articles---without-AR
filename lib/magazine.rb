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

    def contributors
        authors = []
        Article.all.select do |article|
            if article.magazine = self 
            authors << article.author
            end
        end    
        authors.uniq
    end

        
    # end

    # def contributers
    #     authors = []
    #     Article.all.each do |article|
    #       if article.magazine == self
    #         authors << article.author
    #       end
    #     end
    #     authors.uniq
    #   end

end

vogue = Magazine.new("Vogue", "Clothes")

# vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")


# binding.pry
