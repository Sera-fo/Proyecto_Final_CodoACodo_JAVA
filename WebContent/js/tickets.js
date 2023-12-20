

let CANTIDAD = document.getElementById("cantidad");
let CATEGORIA = document.getElementById("categoria");

function precioFinal() {		
	
	if (CATEGORIA.value == 1){precioConDescuento = 0.2;}
	
    if (CATEGORIA.value == 2){precioConDescuento = 0.5;}
    
    if (CATEGORIA.value == 3){precioConDescuento = 0.85;}    
        
    if (CATEGORIA.value == 4){precioConDescuento = 1;} 
            
    let totalAPagar = (200*CANTIDAD.value)*precioConDescuento;        

    importeTotal.innerHTML = 'Total a Pagar : $'+ totalAPagar;
    }

function borrar(){
    importeTotal.innerHTML = 'Total a Pagar : $';
}






