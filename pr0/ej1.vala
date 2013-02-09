class ejercicio1 : GLib.Object {
	

	public static int main(string[] args) {
		int min, max, numero1, numero2, indice = 0;
		string[] jugador = "";
		int[] puntuacion = 0;
		string continuarPartida = "", continuarTurno = "";
		bool finPartida = false, finTurno = false;
		
		stdout.printf("--------------------------------\n");
		stdout.printf("Bienvenido a 'Adivine el número'\n");
		stdout.printf("--------------------------------\n\n");
		stdout.printf("Para comenzar, vamos a configurar la partida.\n");
		
		stdout.printf("Introduce el valor mínimo: ");
		//stdin.scanf("%d", out min);
		min = int.parse(stdin.read_line());		

		stdout.printf("Introduce el valor máximo: ");
		//stdin.scanf("%d", out max);
		//stdout.flush();
		max = int.parse(stdin.read_line());

		numero1 = Random.int_range(min, max);
		
		do {
			stdout.printf("Introduzce tu nombre: ");
			jugador[indice] = stdin.read_line();
			puntuacion[indice] = 0;
			finTurno = false;

			do {
				stdout.printf("¿Qué número crees que es?\nNúmero: ");
				numero2 = int.parse(stdin.read_line());
				puntuacion[indice]++;

				if (numero1 == numero2) {
					stdout.printf("¡Correcto! Fin del juego.\n");
					finTurno = true;
				} else {
					stdout.printf("¡No has acertado!\n¿Quieres probar de nuevo?\n");
					numero2 = 0;
					if (continuarTurno == "n") {
						finTurno = true;
					} else if(continuarTurno == "s") {
						finTurno = false;				
					}
				}
			} while (!finTurno);
			
			do {
				stdout.printf("Ha terminado el turno de " + jugador[indice] + "\n¿Desea jugar otro jugador? (s/n): ");
				continuarPartida = stdin.read_line();

				if (continuarPartida == "n") {
					finPartida = true;
				} else if(continuarPartida == "s") {
					indice++;				
				}
							
			} while (continuarPartida == "s" || continuarPartida == "n");

		} while (!finPartida);
		
		

		return 0;
	}
	
}
