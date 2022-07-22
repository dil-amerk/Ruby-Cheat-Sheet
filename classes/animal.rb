
class Animal 

    # def noise
    #     @noise #instance variable
    # end

    # def noise=(value) 
    #     @noise = value
    # end

    # attr_accessor :noise_attr

    @@species = ['pig', 'dog', 'cat']
    @@total_animals = 0
    @@current_animals = [] 

    attr_accessor :noise, :color

    def initialize(options={})
      @noise = options[:noise] || 'Grrr!'
      @color = options[:color] || 'Green'
      @@total_animals += 1
      @@current_animals << self
    end


    def self.species
        @@species
    end

    def self.species=(array)
        return unless array.is_a?(Array)
        @@species = array
    end

    def self.total_animals
        @@total_animals
    end

    def self.create_a_dog
    Animal.new(noise: 'Woof', color: 'Brown')
    end 

end