```mermaid
classDiagram
	class Escenari{
	}
	class Concert{
	}
	class Artista{
	}
	class Patrocinador{
	}
	class CalculadoraDurada{
	}
	Escenari *--> "1..*" Concert
	Concert -->"1..*" Artista
	Concert -->"0..*" Patrocinador
	Concert ..> CalculadoraDurada
	

```
```mermaid
classDiagram
	class OrdreDeReparacio{
	}
	class Client{
	}
	class Intervencio{
	}
	class Mecanic{
	}
	OrdreDeReparacio -->"1..*" Client
	OrdreDeReparacio *-->"0..*" Intervencio
	Intervencio --> "1" Mecanic
```