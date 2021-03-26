require "./lib/catalogue.rb"

class Reduction 

    def calculeReduction (args, panier)
        if args == "cerises" && panier.accuCerises % 2 == 0
            panier.total += 55
        elsif args == "bananes" && panier.accuBananes % 2 == 0
            panier.total += 0
        elsif args == "meles" && panier.accuMeles % 2 == 0
            panier.total += 0
        elsif args == "pommes" && panier.accuPommes % 3 == 0
            panier.total -= 50
        else
            panier.total += PRODUCTS[args] 
        end
    end
end