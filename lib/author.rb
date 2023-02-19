require 'pry'

class Author

    attr_reader :name

    def initialize(name)
        @name = name

    end

end

oyaki = Author.new("Oyaki")

binding.pry