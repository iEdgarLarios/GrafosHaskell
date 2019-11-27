type Vertice = Int
type Arista = (Vertice, Vertice)
type Grafo = [Arista]

grafo :: [Arista]
grafo = [
		(1,2), (1,3), (1,4), (1,5),
		(2,6), (2,7), (4,8), (5,9)
	]

adj :: Grafo -> Vertice -> [Vertice]
adj [] _ = []
adj ((a,b):c) v
		| (a == v) = b:(adj c v)
		| (b == v) = a:(adj c v)
		| otherwise = adj c v