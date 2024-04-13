module Library where
import PdePreludat

data Cancion = unaCancion {
    titulo :: String,
    duracionMinutos :: Number,
    instrumentos :: [Instrumentos] 
} deriving (Show)

data Instrumentos = Acapella | Guitarra | Bajo | Bateria | Teclado  deriving (Show)


-- canciones para la banda
cancion1 :: Cancion
cancion1 = unaCancion {
    titulo = "Monoriel",
    duracionMinutos = 4,
    instrumentos = [Teclado]
}

cancion2 :: Cancion
cancion2 = unaCancion {
    titulo = "No vives de ensalada",
    duracionMinutos = 1,
    instrumentos = [Acapella]
}

-- ordenar por orden alfabetico
retornarTitulo :: Cancion -> String
retornarTitulo cancion = titulo cancion

ordenarCancionAlfabeticamente :: Ord String => String -> String -> Cancion
ordenarCancionAlfabeticamente cancionA cancionB
    | retornarTitulo cancionA > retornarTitulo cancionB = cancionB
    | retornarTitulo cancionA > retornarTitulo cancionB = cancionB


-- aceptacion por los fans y puntaje
puntajeDeLaCancion :: Cancion -> Number
puntajeDeLaCancion cancion 
  |  head (titulo cancion) == "M" = 500
  |  even (duracionMinutos cancion) = length (titulo cancion) * 10
  |  instrumentos cancion == Acapella = 10

aceptacionDelPublico :: Cancion -> Bool
aceptacionDelPublico cancion = puntajeDeLaCancion cancion > 60


-- la cancion es acapela?
esAcapela :: Cancion -> Bool
esAcapela cancion = head (instrumentos cancion) == Acapella
