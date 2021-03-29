require "./lib/panier.rb"
require "./lib/entre_client.rb"
require "./lib/reduction.rb"
require "./lib/client_interraction.rb"
panier = Panier.new
entre_client = EntreeClient.new
reduction = Reduction.new
client_interraction = ClientCnterraction.new
client_interraction.fruits
ARGF.each do |argument|
  for args in entre_client.entree(argument)
    panier.add_fruits(args)
    reduction.calcule_reduction(args, panier)
  end
  client_interraction.prix(panier)
end
