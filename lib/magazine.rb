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

    # def self.find_by_name(name)
    #     all.select { |magazine| magazine.name == name }.first
    # end

    def article_titles
        Article.all.select { |article| article.magazine == self }.map(&:title)
    end

    def contributing_authors
        Article.all.group_by(&:author).select { |author, articles| articles.count > 2 }.keys
    end

end

vogue = Magazine.new("Vogue", "Clothes")
# vogue2 = Magazine.new("VogUp", "MakeUp")

# vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")
# vogue = Magazine.new("Vogue", "Clothes")


# binding.pry
