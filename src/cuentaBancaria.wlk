object cuentaCorriente {

	var property saldo = 0
	var totalSaldo = 0

	method depositar(importe) {
		saldo += importe
	}

	method extraer(importe) {
		saldo -= importe
	}

}

object cuentaConGastos {

	var property saldo = 0

	method depositar(importe) {
		saldo += importe - 20
	}

	method extraer(importe) {
		if (importe <= 1000) {
			saldo -= importe + 20
		} else {
			saldo -= importe + 40
		}
	}

}

object cuentaCombinada {

	method depositar(importe) {
		cuentaCorriente.depositar(importe)
	}

	method extraer(importe) {
		if (cuentaCorriente.saldo() >= importe) {
			cuentaCorriente.extraer(importe)
		} else {
			cuentaConGastos.extraer(importe)
		}
	}

	method saldo() {
		return cuentaCorriente.saldo() + cuentaConGastos.saldo()
	}

}

