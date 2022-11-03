import repository.WerknemerDao;
import domain.Werknemer;

import java.util.List;

public class Main {

    private static WerknemerDao werknemerDao = new WerknemerDao();

    public static void main(String[] args) {

        printWerknemers(werknemerDao.getWerknemers());
    }

    private static void printWerknemers(List<Werknemer> werknemers) {
        for (Werknemer werknemer : werknemers) {
            System.out.println("| Voornaam: " + werknemer.getVoornaam() + " | Achternaam: " + werknemer.getAchternaam() + " | Extensie: " + werknemer.getExtensie() + " | Telefoon: " + werknemer.getTelefoon() + "|");
            System.out.println("----------------------");
        }
    }
}
