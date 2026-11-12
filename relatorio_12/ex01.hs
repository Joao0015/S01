data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Moderado"
  | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe _ preco _) =
  if leite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let cappuccino = Cafe "Cappuccino" 9.5 3
  let coado = Cafe "Cafe coado" 6.0 6
  let expresso = Cafe "Expresso" 7.5 9

  putStrLn "Cafes de hoje:"
  putStrLn (descrever cappuccino)
  putStrLn ("Intensidade: " ++ forca cappuccino)
  putStrLn (descrever coado)
  putStrLn ("Intensidade: " ++ forca coado)
  putStrLn (descrever expresso)
  putStrLn ("Intensidade: " ++ forca expresso)

  putStrLn "Cafe coado sem leite:"
  print (precoDoPedido False coado)
  putStrLn "Cafe coado com leite:"
  print (precoDoPedido True coado)