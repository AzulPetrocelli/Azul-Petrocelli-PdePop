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