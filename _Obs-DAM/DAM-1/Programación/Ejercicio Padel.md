Un club de pàdel vol una aplicació per gestionar reserves de pistes. El club té diverses pistes (numerades) i cada pista es pot reservar per franges horàries d'una durada fixa (per exemple, 90 minuts) dins un horari d'obertura. Els clients del club es registren amb les seves dades bàsigues i poden fer una reserva indicant data, hora d'inici i pista. El sistema ha d'eviar solapaments: una pista no pot tenir dues reserves que coincideixen en el temps. També ha de permetre consultar disponibilitat per un dia, llistar les reserves d'un client i cancel·lar una reserva. Per simplificar, una reserva només pot estar activa o cancel·lada. A més, quan es crea una reserva, el client por pagar online mitjançant una passarel·la de pagament: el sistema crida un mètode que simula el pagament i retorna si ha anat bé o no. Si el pagament falla, la reserva no es crea.

1. **Clases candidatas** 
- ClubPadel 
- Reserva 
- Pista 
- Horari 
- Pagament 
- Disponibilitat 
- Client 
- Sistema 
- FormaPagament 
- PasarelaPagament 
- ReservaActiva 
- ReservaCancelada
2. **Filtrar candidats** 
- ClubPadel 
- Pista 
- Reserva 
- Client 
- PasarelaPagament
3. **Responsabilitat**

- **ClubPadel**: Representa clients de padel que gestionen les reserves

- **Pista**: Representa pistes d’un club de padel

- **Reserva**: Representa reserves d’una pista fetes per un client

- **Client**: Representa clients que faran reserves

- **PasarelaPagament**: Representa pasarel·les de pagament que permetran fer un pagament

4. **Propietats**

Client:

|**Propietat**|**Tipus**|
|---|---|
|`dni`|`String`|
|`nom`|`String`|
|`email`|`String`|
|`telefon`|`String`|

Pista:

|**Propietat**|**Tipus**|
|---|---|
|`numPista`|`Int`|
|`preu30min`|`double`|
|activa|boolean|

Reserva:

|**Propietat**|**Tipus**|
|---|---|
|`client`|`Client`|
|`pista`|`Pista`|
|`dataInici`|`Date`|
|`horaInici`|`Time`|
|`activa`|`boolean`|
|`preuTotal`|`doubble`|
|`durada`|`int`|
|id|int|

ClubPadel:

|**Propietat**|**Tipus**|
|---|---|
|nom|String|
|telefon|String|
|movil|String|
|pistes|List `<Lista>`|
|clients|List`<Client>`|
|reserves|List`<Reserva>`|
|id|int|

5. **Metodes:**

PasarelaPagament:

+boolean pagar (Double preu)

Reserva:

+cancelar()

ClubPadel:

+boolean reservar(Pista p, Client c, date d, time h, int duracio)

+afegirClient(Client c)

+llevarClient(string dni)

+crearPista(double preu30min)

Pista:

+activar()

+desactivar()

6. **Relacions**

A partir de la lògica del sistema, s'estableixen les següents relacions:

- **ClubPadel - Pista**: Un club té diverses pistes (1 a N).
- **ClubPadel - Client**: Un club gestiona diversos clients (1 a N).
- **ClubPadel - Reserva**: El club gestiona totes les reserves del sistema (1 a N).
- **Reserva - Client**: Una reserva pertany a un sol client (N a 1).
- **Reserva - Pista**: Una reserva s'assigna a una pista específica (N a 1).
- **Reserva - Pasarela Pagament**: La reserva utilitza la passarel·la per validar el procés de creació.

**7. Regles de negoci**

Normes que el sistema ha de complir obligatòriament segons l'enunciat:

- **Identificació**: Les pistes han d'estar numerades.
- **Franges horàries**: Les reserves han de tenir una durada fixa (ex: 30 minuts) dins de l'horari d'obertura.
- **No solapament**: El sistema ha d'evitar que una pista tingui dues reserves que coincideixin en el temps.
- **Estats de reserva**: Una reserva només pot estar en estat "activa" o "cancel·lada".
- **Condició de pagament**: El pagament s'ha de realitzar en el moment de crear la reserva.
- **Validació de pagament**: Si la simulació del pagament falla, la reserva no es pot crear en el sistema.
- Reserva durada, reserva inici, ClubPadel obertura, Clubpadel tancament mod 30

````mermaid
classDiagram
    class ClubPadel {
        -int id
        -String nom
        -String telefon
        -String movil
        +boolean reservar(Pista p, Client c, Date d, Time h, int duracio)
        +afegirClient(Client c)
        +llevarClient(String dni)
        +crearPista(double preu30min)
        +consultarDispo(dia: Date)
    }

    class Client {
        -String dni
        -String nom
        -String email
        -String telefon
    }

    class Pista {
        -int numPista
        -double preu30min
        -boolean activa
        +activar()
        +desactivar()
    }

    class Reserva {
        -int id
        -Date dataInici
        -Time horaInici
        -boolean activa
        -double preuTotal
        -int durada
        +cancelar()
    }

    class PasarelaPagament {
        +boolean pagar(Double preu)
    }

    %% Relacions amb rombes
    ClubPadel "1" *--> "*" Pista : composició
    ClubPadel "1" *-->"*" Reserva : composició
    ClubPadel "1" o--> "*" Client : agregació
    
    %% Associacions i dependències
    Reserva "n" --> "1" Client : vinculada a
    Reserva "n" --> "1" Pista : assignada a
    ClubPadel ..> PasarelaPagament : utilitza
```


LocalTime: hora

LocalDataTime: hora + data

=LocalTime of (14,30);

=LocalDateTime of (2026,mes,dia,hora)