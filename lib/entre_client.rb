class Entree_client 
    
    attr_accessor :allArgs

    def initialize 
        @allArgs = []
    end

    def entree (argument)
        argument = argument.chomp 
        return "oups" if argument == "quit"
        @allArgs = argument.split(", ")
    end

end