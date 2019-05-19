import cosas.*
import cuentaBancaria.*

object casaDePepeYJulian {

	const cosas = []
	var cuentaActual = cuentaCorriente

	method comprar(cosa) {
		cosas.add(cosa)
		cuentaActual.extraer(cosa.precio())
	}

	method cantidadDeCosasCompradas() {
		return cosas.size()
	}

	method tieneComida() {
		return cosas.any{ n => n.esComida() }
	}

	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}

	method esDerrochona() {
		return cosas.sum({ n => n.precio() }) >= 9000
	}

	method compraMasCara() {
		return cosas.max{ e => e.precio() }
	}

	method electrodomesticosComprados() {
		return cosas.count{ e => e.esElectrodomestico() }
	}

	method malaEpoca() {
		return cosas.all{ e => e.esComida() }
	}

	method queFaltaComprar(lista) {
		return lista.filter({ e => not cosas.contains(e) })
	}

	method faltaComida() {
		return (cosas.count{ n => n.esComida() }) < 2
	}

	// cuenta bancaria
	method gastar(importe) {
		cuentaActual.extraer(importe)
	}

	// en el parametro cuenta va a ir el objeto de la cuenta que se quiera configurar
	method cambiarCuenta(cuenta) {
		cuentaActual = cuenta
	}

	method dineroDisponible() {
		return cuentaCombinada.saldo()
	}

}

