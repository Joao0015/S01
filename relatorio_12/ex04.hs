data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor :: Double
  , etapa :: Etapa
  }

descrever :: Atendimento -> String
descrever a = cliente a ++ " - " ++ servico a ++ " [" ++ show (etapa a) ++ "]"

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado lista = sum (map valor (filter (\a -> etapa a == Concluido) lista))

main :: IO ()
main = do
  let joaquim = Atendimento "Seu Joaquim" "banho quente" 30.0 NoBanho
  let carmen = Atendimento "Dona Carmen" "sauna" 45.0 NaFila
  let pedro = Atendimento "Pedro" "massagem" 60.0 NaFila

  let antes = [joaquim, carmen, pedro]
  let depois = [concluir joaquim, carmen, concluir pedro]

  putStrLn "Manha:"
  mapM_ putStrLn (map descrever antes)
  putStrLn ("Total arrecadado: R$ " ++ show (arrecadado antes))

  putStrLn "Fim do dia:"
  mapM_ putStrLn (map descrever depois)
  putStrLn ("Total arrecadado: R$ " ++ show (arrecadado depois))

  putStrLn "Lista da manha (continua igual):"
  mapM_ putStrLn (map descrever antes)