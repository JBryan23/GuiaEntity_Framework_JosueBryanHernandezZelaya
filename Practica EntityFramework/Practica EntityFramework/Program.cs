// El usuario ingrese los datos desde la consola como, nombre, apellido, sexo y edad para ingresar nuevos registros
using (var contextdb = new UNABDbContext())
{
    contextdb.Database.EnsureCreated();
    var Agregar_Nuevo_Registros = true;
    while (Agregar_Nuevo_Registros)
    {
        Console.WriteLine("Ingrese el nombre del estudiante: ");
        var Nuevo_Nombre = Console.ReadLine();
        Console.WriteLine("Ingrese el apellido del estudiante");
        var Nuevo_apellido = Console.ReadLine();
        Console.WriteLine("Ingrese la edad del estudiante (Solo numeros enteros)");
        int Nuevo_Edad = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Ingrese el sexo del estudiante (Usar F= Femenino o Usar M= Masculino");
        var Nuevo_Sexo = Console.ReadLine();
        var Estudiante1 = new Estudiante()
        {
            Nombres = Nuevo_Nombre,
            Apellidos = Nuevo_apellido,
            Edad = Nuevo_Edad,
            Sexo = Nuevo_Sexo
        };
        contextdb.Add(Estudiante1);
        contextdb.SaveChanges();
        Console.WriteLine("Registro completado");

        Console.Write(@"Usuario ¿Desea agregar más registros?
Si su respuesta es si ingrese la letra: S
Si su respuesta es No ingrese la letra: N
Ingrese su respuesta: ");
        string Respuesta_del_usuario = Console.ReadLine();

        Agregar_Nuevo_Registros = (Respuesta_del_usuario.Trim().ToUpper() == "S");
    }
   
}

//Muestra los registros actuales tantos nuevos como antiguos (Total de la Base de datos)
using (var bd = new UNABDbContext())
{
    Console.WriteLine("Datos de la tabla:");
    foreach (var item in bd.Estudiante)
    {
        Console.WriteLine("==============================");
        Console.WriteLine("Id del estudiante: " +item.Id);
        Console.WriteLine("Nombre del estudiante " + item.Nombres);
        Console.WriteLine("Apellidos del estudiante: " + item.Apellidos);
        Console.WriteLine("Edad del estudiante: " + item.Edad + " años");
        Console.WriteLine("Sexo del estudiante: " + item.Sexo);
    }
    Console.WriteLine("==============================");
}

// Modificacion del codigo para registros nuevos

//using (var contextdb = new UNABDbContext())
//{
//    contextdb.Database.EnsureCreated();
//    var estudiante1 = new Estudiante() { Nombres = "Pepito", Apellidos = "Pérez", Edad = 30, Sexo = "M"};
//    contextdb.Add(estudiante1);
//    contextdb.SaveChanges();
//    foreach (var s in contextdb.Estudiante)
//    {
//        Console.WriteLine(s.Apellidos);
//    }
//}
// Nota lo he comentado para que cuando quiera pueda usarlo y darse cuenta que si funciona y registra nuevos datos ya que cuando
// el usuario ingresa de manera implicita se ocupa agregar que tambien ya se registro lo que se solicitaba en ese apartado



// Hecho por Josue Bryan Hernandez Zelaya