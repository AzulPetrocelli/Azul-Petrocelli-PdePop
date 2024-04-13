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
    duracionMinutos = 1,
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