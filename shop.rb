require "./lib/panier.rb"
require "./lib/entre_client.rb"
require "./lib/reduction.rb"
require "./lib/client_interraction.rb"
panier = Panier.new
entre_client = Entree_client.new
reduction = Reduction.new
client_interraction = Client_interraction.new
client_interraction.fruits()
ARGF.each do |argument|
  for args in entre_client.entree(argument)
    panier.addFruits(args)
    reduction.calcule_reduction(args, panier)
  end
  client_interraction.prix(panier)
end
