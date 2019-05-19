object heladera {

	method precio() {
		return 20000
	}

	method esComida() {
		return false
	}

	method esElectrodomestico() {
		return true
	}

}

object cama {

	method precio() {
		return 8000
	}

	method esComida() {
		return false
	}

	method esElectrodomestico() {
		return false
	}

}

object tiraDeAsado {

	method precio() {
		return 350
	}

	method esComida() {
		return true
	}

	method esElectrodomestico() {
		return false
	}

}

object paqueteDeFideos {

	method precio() {
		return 50
	}

	method esComida() {
		return true
	}

	method esElectrodomestico() {
		return false
	}

}

object plancha {

	method precio() {
		return 1200
	}

	method esComida() {
		return false
	}

	method esElectrodomestico() {
		return true
	}

}

object milanesas {

	method precio() {
		return 260
	}

	method esComida() {
		return true
	}

	method esElectrodomestico() {
		return false
	}

}

object salsaTomates {

	method precio() {
		return 90
	}

	method esComida() {
		return true
	}

	method esElectrodomestico() {
		return false
	}

}

object microondas {

	method precio() {
		return 4200
	}

	method esComida() {
		return false
	}

	method esElectrodomestico() {
		return true
	}

}

object cebollas {

	method precio() {
		return 25
	}

	method esComida() {
		return true
	}

	method esElectrodomestico() {
		return false
	}

}

object computadora {

	method precio() {
		return 500 * dolar.precioDeVenta()
	}

	method esComida() {
		return false
	}

	method esElectrodomestico() {
		return true
	}

}

object dolar {

	method precioDeVenta() {
		return 47
	}

}

object packComida {

	var precio = 0

	method precio() {
		return precio
	}

	method esComida() {
		return true
	}

	method esElectrodomestico() {
		return false
	}

	method pack(comida, aderezo) {
		precio = comida.precio() + aderezo.precio()
	}

}

