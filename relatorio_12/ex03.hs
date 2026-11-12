data Esboco = Esboco
  { titulo :: String
  , tecnica :: String
  , horas :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "Caderno vazio, nenhum desenho ainda"
esbocoMaisRecente (e:_) = "Ultimo desenho: " ++ titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno =
        [ Esboco "Gato preto no muro" "carvao" 3
        , Esboco "Casa abandonada" "nanquim" 5
        , Esboco "Arvore seca" "grafite" 4
        ]

  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Esbocos no caderno: " ++ show (contarEsbocos caderno))
  putStrLn ("Total de horas desenhando: " ++ show (horasDesenhando caderno))

  putStrLn (esbocoMaisRecente [])

  let cadernoNovo = Esboco "Igreja velha" "nanquim" 6 : caderno

  putStrLn "Caderno novo:"
  putStrLn (esbocoMaisRecente cadernoNovo)
  putStrLn ("Esbocos: " ++ show (contarEsbocos cadernoNovo))
  putStrLn "Caderno antigo (nao mudou):"
  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Esbocos: " ++ show (contarEsbocos caderno))

  -- putStrLn (titulo (head ([] :: [Esboco])))