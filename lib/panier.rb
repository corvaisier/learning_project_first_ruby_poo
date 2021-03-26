class Panier
    
    attr_accessor :total, :accuCerises, :accuBananes, :accuMeles, :accuPommes

    def initialize 
        @total = 0
        @accuCerises = 0
        @accuBananes = 0
        @accuMeles = 0
        @accuPommes = 0
    end
    def addFruits(args)
        @accuCerises +=1 if args == "cerises"
        @accuBananes +=1 if args == "bananes"
        @accuMeles +=1 if args == "meles"
        @accuPommes +=1 if args == "pommes"
    end

end