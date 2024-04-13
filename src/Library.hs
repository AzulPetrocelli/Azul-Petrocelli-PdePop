module Library where
import PdePreludat

data Cancion = UnaCancion {
    titulo :: String,
    duracionMinutos :: Number,
    instrumentos :: Instrumentos
} deriving (Show)

data Instrumentos = Acapella | Guitarra | Bajo | Bateria | Teclado  deriving (Show, Eq)


-- canciones para la banda
cancion1 :: Cancion
cancion1 = UnaCancion {
    titulo = "Monoriel",
    duracionMinutos = 4,
    instrumentos = Teclado
}

cancion2 :: Cancion
cancion2 = UnaCancion {
    titulo = "No vives de ensalada",
    duracionMinutos = 2,
    instrumentos = Acapella
}

-- ordenar por orden alfabetico
retornarTitulo :: Cancion -> String
retornarTitulo cancion = titulo cancion

ordenarCancionAlfabeticamente :: Cancion -> Cancion -> String
ordenarCancionAlfabeticamente cancionA cancionB
    | retornarTitulo cancionA < retornarTitulo cancionB = retornarTitulo cancionA
    | retornarTitulo cancionA > retornarTitulo cancionB = retornarTitulo cancionB

-- la cancion es acapela?
esAcapela :: Cancion -> Bool
esAcapela cancion = (instrumentos cancion) == Acapella

-- aceptacion por los fans y puntaje
puntajeDeLaCancion :: Cancion -> Number
puntajeDeLaCancion cancion 
  |  head (titulo cancion) == 'M' = 500
  |  even (duracionMinutos cancion) = length (titulo cancion) * 10
  |  instrumentos cancion == Acapella = 10

aceptacionDelPublico :: Cancion -> Bool
aceptacionDelPublico cancion = puntajeDeLaCancion cancion > 60