require 'pry'

# require_relative './article.rb'
# require_relative './magazine.rb'



class Author
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self

    end

    def articles
        Article.all.select{ |article| article.author == self}
    end

    def magazines
        articles.map {  |article| article.magazine }.uniq
    end

    def self.all
        @@all
    end

end


oyaki = Author.new("Oyaki")

# zaki = Author.new("Zaki")
# magazine = Magazine.new("NYC Times", "World Matters")
# articles = Article.new(author, magazine, "Ultra-Instinct Unlocked!!")
# articles = Article.new("Goku", magazine, "Ultra-Instinct Unlocked!!")



binding.pry

