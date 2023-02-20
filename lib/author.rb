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
        Article.all.select { |article| article.author == self}
    end

    def magazines
        articles.map { |article| article.magazine }.uniq
    end

    def self.all
        @@all
    end

    def add_article(magazine, title)
        Article.new(self, magazine, title)
    end

    
    def topic_areas
        Article.all.map {|article| article.magazine }

    end

end

oyaki = Author.new("Oyaki")
# zaki = Author.new("Zaki")

# binding.pry

