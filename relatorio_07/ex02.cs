using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{this.Especie} (Lv. {this.Nivel}) usou um ataque comum!");
    }
}

public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        // Sobrescreve completamente sem chamar o base.Atacar()
        Console.WriteLine($"{this.Especie} (Lv. {this.Nivel}) usou Folha Navalha! Um golpe especial de Planta.");
    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        // Reaproveita a lógica do pai e adiciona algo novo
        base.Atacar(); 
        Console.WriteLine($"Em seguida, {this.Especie} soltou uma tremenda descarga elétrica!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        // 1. Criando um de cada tipo
        Pokemon pokemonNormal = new Pokemon("Eevee", 10);
        TipoPlanta pokemonPlanta = new TipoPlanta("Bulbasaur", 15);
        TipoEletrico pokemonEletrico = new TipoEletrico("Pikachu", 20);

        // 2. Criando a lista e adicionando os Pokémons
        List<Pokemon> equipe = new List<Pokemon>();
        equipe.Add(pokemonNormal);
        equipe.Add(pokemonPlanta);
        equipe.Add(pokemonEletrico);

        Console.WriteLine("=== Batalha de Exibição Iniciada ===\n");

        // 3. Percorrendo a lista com foreach
        foreach (Pokemon p in equipe)
        {
            p.Atacar();
            Console.WriteLine("-----------------------------------");
        }
    }
}