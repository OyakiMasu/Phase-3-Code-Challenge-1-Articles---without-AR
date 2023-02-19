require 'pry'

require_relative './author.rb'
require_relative './magazine.rb'


class Article

    attr_accessor :author, :magazine, :title

    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self

    end

    def self.all
        @@all
    end

end

author = Author.new("Oyaki")
magazine = Magazine.new("NYC Times", "World Matters")
article = Article.new(author, magazine, "Fall of Solana")

# author1 = Author.new("Zaki")
# magazine2 = Magazine.new("MenFit", "Health")
# article2 = Article.new(author, magazine, "Six-pack guide")



binding.pry