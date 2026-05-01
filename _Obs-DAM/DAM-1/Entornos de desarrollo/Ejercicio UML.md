````mermaid
classDiagram
	class Persona{
		-numero : integer
		-dni : string
		-provincia : string
		-telefon : string
		-direccio : string
		-poblacio : string
		-codiPostal : string
		-nom : string
		-llinatges : string
		+validarDNI() boolean
		+actualitzarContacte()
	}
	class Client{
	+crear()
	+modificar()
	+eliminar()
	+calcularCredit() integer
	}
	class Venedor{
		+calcularComisio() float
	}
	class Proveidor{
		+pagamentProveidor()
	}
	class Document{
		-numero : Integer
		-data : Date
		+afegirLinia(art: Article, qty: integer)
		+eliminarLinia(idLinia: integer)
		+calcularTotal() float
	}
	class LineaDocument{
		-quantitat : integer
		-preuAplicat : float
		+calcularSubtotal(): float
	}
	class Article{
		-numero : integer
		-article : string
		-preuVenta : float
		-preuCompra : float
		-margeComercial : float
		+actualitzarPreu(nouPreu : float)
		+calcularMarge() float 
	}
	class AlbaraClient{
	}
	class FacturaClient{
	}
	class PressupostClient{
	}
	class ComandaClient{
	}
	class PressupostProveidor{
	}
	class ComandaProveidor{
	}
	class FacturaProveidor{
	}
	class AlbaraProveidor{
	}
	%%Relaciones Herencias
	Persona<|-- Client
	Persona <|--Venedor
	Persona <|--Proveidor
	
	Document<|--AlbaraClient
	Document<|--FacturaClient
	Document<|--PressupostClient
	Document<|--ComandaClient
	Document<|--AlbaraProveidor
	Document<|--FacturaProveidor
	Document<|--PressupostProveidor
	Document<|--ComandaProveidor
	
	%%Relaciones 
	Document "0..*" o-->"1" Client
	Document "0..*" o-->"1"Venedor
	Document "0..*" o-->"1"Proveidor
	LineaDocument "0..*" o-->"1" Article
	Article "0..*" o-->"1" Proveidor
	Document "1" *--> "1..*" LineaDocument
	
	 

```