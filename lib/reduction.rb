require './lib/catalogue.rb'

class Reduction 

    def calcule_reduction (args, panier)
        if args == 'cerises' && panier.accu_cerises % 2 == 0
            panier.total += 55
        elsif args == 'bananes' && panier.accu_bananes % 2 == 0
            panier.total += 0
        elsif args == 'meles' && panier.accu_meles % 2 == 0
            panier.total += 0
        elsif args == 'pommes' && panier.accu_pommes % 3 == 0
            panier.total -= 50
        else
            panier.total += PRODUCTS[args] 
        end
    end
end