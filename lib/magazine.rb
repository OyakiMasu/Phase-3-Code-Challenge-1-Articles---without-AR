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
    def name
        @name
    end

    def contributors
        authors = []
        Article.all.select do |article|
            if article.magazine == self
            authors << article.author
            end
        end
        authors.uniq
    end

    #Issue of not creating instead of finding
    def self.find_by_name(name)
        @@all.detect { |magazine| magazine.name == name}
    end

    def article_titles
        Article.all.map { |article| article.title }

    end

    def contributing_authors
        counts = Hash.new(0)
        #authors
        con = []
        #con authors
        auth = []
        Article.all.select do |article|
        if article.magazine.name == @name
            con << article.author.name
            end
        end
        con.each do |final| counts[final] += 1
        end
        counts.each do |final, aggregate| auth << final if aggregate > 2
        end
      pp  auth
        
    end



end

vogue = Magazine.new("Vogue", "Clothes")

# binding.pry
