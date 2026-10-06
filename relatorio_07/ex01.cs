using System;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

    public void Equipar(string arma)
    {
        this.Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"Nome: {Nome} | Povo: {Povo} | Posto: {Posto}");
        
        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
        Console.WriteLine("--------------------------------------------------");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        CombatenteDeGondor c1 = new CombatenteDeGondor("Faramir", "Gondor", "Capitão");
        CombatenteDeGondor c2 = new CombatenteDeGondor("Aragorn", "Dúnedain", "Rei");
        CombatenteDeGondor c3 = new CombatenteDeGondor("Pippin", "Hobbit", "Guarda da Cidadela");

        c1.Equipar("Espada");
        c2.Equipar("Arco e Flecha");

        c1.ApresentarUnidade();
        c2.ApresentarUnidade();
        c3.ApresentarUnidade();

        // c3.Posto = "Cavaleiro"; 
		// ERRO: A propriedade 'Posto' não pode ser atribuída aqui pois o 'set' é privado.
    }
}