class Pirate
        attr_accessor :name, :weight, :height

        PIRATES = []

        def initialize(name:,height:,weight:)
            @name = name
            @height = height
            @weight = weight
            
            PIRATES << self
        end
        #name,height,weight
        def self.all    
            PIRATES  
        end
end