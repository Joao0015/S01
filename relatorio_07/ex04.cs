using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"A entidade {this.Nome} manifestou sua presença!");
        
        if (this.Origem != "Desconhecida")
        {
            Console.WriteLine($" -- Origem catalogada: {this.Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        Console.WriteLine($"[Alerta] O ser aquático {this.Nome} emerge das águas!");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine($" -- A criatura zumbiu e voou rapidamente!");
    }
}

public class Pesquisador
{
    public string Nome { get; set; }
    private List<EntidadeCosmica> _catalogo;

    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this._catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica entidade)
    {
        this._catalogo.Add(entidade);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"=== Catálogo do Pesquisador {this.Nome} ===\n");
        
        foreach (EntidadeCosmica entidade in this._catalogo)
        {
            entidade.Manifestar();
            Console.WriteLine("--------------------------------------------------");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        EntidadeCosmica serGenerico = new EntidadeCosmica("Ori");
        serGenerico.Origem = "Dark Florest";

        Profundo monstroAquatico = new Profundo("Wild Shark");

        MiGo criaturaVoadora = new MiGo("Butterfly");
        criaturaVoadora.Origem = "Planeta X";

        Pesquisador cientista = new Pesquisador("Doutor Takeichi");

        cientista.Catalogar(serGenerico);
        cientista.Catalogar(monstroAquatico);
        cientista.Catalogar(criaturaVoadora);

        cientista.LerCatalogo();
    }
}
