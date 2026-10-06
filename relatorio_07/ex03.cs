using System;
using System.Collections.Generic;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"O grimório foi aberto! Feitiço em destaque: {this.FeiticoFavorito}");
    }
}

public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"- {this.Nome}, o {this.Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio MeuGrimorio { get; set; }
    
    private List<Companheiro> _grupo;

    public Maga(string nome)
    {
        this.Nome = nome;
        this.MeuGrimorio = new Grimorio();
        this._grupo = new List<Companheiro>();
    }

    public void Recrutar(Companheiro companheiroNovo)
    {
        this._grupo.Add(companheiroNovo);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\nGrupo de aventuras de {this.Nome}:");
        foreach (Companheiro c in this._grupo)
        {
            c.Apresentar();
        }
        Console.WriteLine();
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Companheiro c1 = new Companheiro("Fern", "Aprendiz de Magia");
        Companheiro c2 = new Companheiro("Stark", "Guerreiro");

        Maga frieren = new Maga("Frieren");

        frieren.Recrutar(c1);
        frieren.Recrutar(c2);

        frieren.MeuGrimorio.FeiticoFavorito = "Zoltraak";

        frieren.MostrarGrupo();
        frieren.MeuGrimorio.Abrir();

        /*
            DIFERENÇA ENTRE COMPOSIÇÃO E AGREGAÇÃO NESTE CÓDIGO:
            
            Composição (Maga e Grimório): Ocorre dentro do construtor da Maga 
            (this.MeuGrimorio = new Grimorio();). Isso cria uma relação de dependência forte. 
            O grimório só existe porque a Maga foi criada, eles nascem juntos e formam 
            um único sistema indivisível na regra de negócio.

            Agregação (Maga e Companheiros): Ocorre através do método Recrutar.
            Os objetos Fern e Stark foram instanciados na Main antes da Frieren existir.
            Eles têm vida própria independente da maga. Frieren apenas guarda uma 
			referência a eles dentro da sua lista, mas não é dona da vida deles.
        */
    }
}