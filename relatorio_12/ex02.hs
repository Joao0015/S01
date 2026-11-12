pesoMaximo :: Double
pesoMaximo = 5.0
-- pesoMaximo = 8.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso :: Double
  , frete :: Double
  }

descrever :: Encomenda -> String
descrever e = destinatario e ++ " | " ++ show (peso e) ++ " kg | frete R$ " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura lista = filter (\e -> peso e <= pesoMaximo) lista

totalDeFretes :: [Encomenda] -> Double
totalDeFretes lista = sum (map frete lista)

main :: IO ()
main = do
  let encomendas =
        [ Encomenda "Padaria do centro" 3.0 15.0
        , Encomenda "Dona Maria (bolo de aniversario)" 2.5 20.0
        , Encomenda "Mercado (fardo de refrigerante)" 12.0 50.0
        , Encomenda "Farmacia" 1.0 5.0
        , Encomenda "Escola (caixa de livros)" 7.5 30.0
        ]
  let cabem = cabemNaVassoura encomendas

  putStrLn "Encomendas de hoje:"
  mapM_ putStrLn (map descrever encomendas)

  putStrLn ("Cabem na vassoura (ate " ++ show pesoMaximo ++ " kg):")
  mapM_ putStrLn (map descrever cabem)

  putStrLn ("Total de frete: R$ " ++ show (totalDeFretes cabem))