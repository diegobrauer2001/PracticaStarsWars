import guerreros.*


object alianza {




    method evaluarGurreroAReclutar(unGuerrero){
        
        return unGuerrero.salud()  > 50 and unGuerrero.poder() >=25
    }



    method reclutarGuerrero(unGuerrero) {
        if (self.evaluarGurreroAReclutar(unGuerrero)){
            ejercito.formacion().add(unGuerrero)
        }
        
    }



    method entrenarGuerrero(unGuerrero) {
        unGuerrero.entrenar()
    }


    


    method entrenarEjercito() {

        ejercito.formacion().forEach({unGuerrero => unGuerrero.entrenar()})
    }


    method numeroDeGuerreros() {
        
        return ejercito.formacion().size()
    }


    method poderTotal() {

        return ejercito.formacion().sum({unGuerrero => unGuerrero.poder()} + self.numeroDeGuerreros()*25)

    }

    

    method esUnEjercitoInvencible() = ejercito.ejercitoEsPoderoso() or ejercito.tieneUnCampeon()




    method guerrerosDebiles(energia){

        return ejercito.formacion().filter({unGuerrero => unGuerrero.poder() <= energia})
    }





    method ganarBatalla(poder) {
        
        return self.poderTotal() > poder
    }





    method pocaSaludYMuchoPoder(unGuerrero) {

        return unGuerrero.salud() < unGuerrero.poder()
    }



    method listaDeNombres() {



        return ejercito.formacion().filter({unGuerrero => unGuerrero.esCampeon()}).forEach({unGuerrero => unGuerrero.nombre()})

    }


    method elGuerreroFormaParteDelEjercito(unGuerrero) {

        return ejercito.formacion().contains(unGuerrero)


    }



}   

object ejercito {

    const property formacion = []



    method ejercitoEsPoderoso() = formacion.all({unGuerrero => unGuerrero.poder() > 50}) 

    method tieneUnCampeon() = formacion.any({unGuerrero => unGuerrero.esCampeon()}) 


}