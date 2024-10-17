object luke{


    var salud = 75
    var poder = 5
    const property nombre = "luke" 
    var sableEnUso = sableVerde



    method salud() = salud



    method poder() = poder


    method esCampeon() = poder >= 30



    method entrenar() {

        salud +=25
        poder += sableEnUso.poderSable()
    }


    method cambiarSable() {

        sableEnUso = sableEnUso.cambiar()
    }



}

object sableAzul {

method poderSable() = 25

method cambiar() = sableVerde

}

object sableVerde {

    method poderSable() = 15 

    method cambiar() = sableAzul

}


object yoda {

    var salud = 30 
    var poder = 50 
    const property nombre = "Din Grogu"
    var estadoFuerza = false 



    method salud() = salud



    method poder() = poder



    method estadoFuerza() = estadoFuerza 


    method activarFuerza() {

        estadoFuerza = true
    }


    method desactivarFuerza() {
        estadoFuerza = false
    }


    method entrenar() {

        if(estadoFuerza){
            poder = poder * 2
        }
        else{
            
            salud = salud + 25
        }


    }


    method esCampeon() = true


}


object arturito {

    var salud = 50 
    const poder = 80
    var cantReparaciones = 0
    const property nombre = "R2-D2"

    method salud() = salud



    method poder() = (poder - cantReparaciones*2).max(0)



    method entrenar() {
        
        salud += 10

        cantReparaciones += 1
    }

    method esCampeon() = cantReparaciones % 2 == 0 
}


object c3po {

    const salud = 80
    const poder = 30
    var capacidadDeReparacion = 3

    method salud() = salud



    method poder() = poder




    method capacidadDeReparacion() = capacidadDeReparacion

    
    
    
    method entrenar() {

        capacidadDeReparacion += 1

    }


    method esCampeon() =  capacidadDeReparacion > poder * 0.1



}

object HalconMilenario {

    var blindaje = 1000

    var  velocidad = 500

    method blindaje() = blindaje

    method velocidad() = velocidad

    method reparar() {

        if (c3po.esCampeon()){
            blindaje += 100 * c3po.capacidadDeReparacion()
            velocidad += 100 * c3po.capacidadDeReparacion()
        }
        else{

            blindaje += 200
            velocidad += 200
        }
    }

}