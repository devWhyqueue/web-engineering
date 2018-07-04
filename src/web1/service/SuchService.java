package web1.service;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.Random;

/**
 * Service, der eine Suchfunktionalitaet "mockt". Der Service kann ueber die
 * statische Methode "search" verwendet werden.
 */
public class SuchService {

    private static final Random RANDOM = new Random();

    private static final SeminarSuchtreffer[] MOCK_DATA = new SeminarSuchtreffer[]{
        new SeminarSuchtreffer("Aktuelle Themen des Web-Engineering", "Joerg Svensson"),
        new SeminarSuchtreffer("Didaktische Reduktion", "Katharina Schmidt"),
        new SeminarSuchtreffer("Der Weg durch das Klammergebirge - Lisp f&uuml;r Anf&auml;nger", "Conrad Barski"),
        new SeminarSuchtreffer("Bitcoin oder doch lieber Zcash?", "Satoshi Nakamoto"),
        new SeminarSuchtreffer("Programmieren mit Malbolge", "Ben Olmstead"),
        new SeminarSuchtreffer("Stimmtraining: Focus Stimme", "Manfred Lehmann"),
        new SeminarSuchtreffer("Fortgeschrittene Prokrastination", "Ferris Bueller"),
        new SeminarSuchtreffer("Das Gute an JavaScript", "Douglas Crockford"),
        new SeminarSuchtreffer("Das 'S' in IoT steht f&uuml;r Sicherheit", "Anke Rehder"),};

    /**
     * Taeuscht eine Suchfunktionalitaet vor, indem eine zufaellige Menge von 
     * Suchergebnissen zurueckgegeben wird.
     *
     * @param suchbegriffe Einer oder mehrere Suchbegriffe als Strings.
     * @return Ein Array mit (mehr oder weniger) zufaelligen Suchergebnissen als
     * {@code SeminarSuchtreffer}-Objekte. Achtung: Das Array kann auch leer sein 
     * (= keine Suchergebnisse gefunden)!
     */
    public static SeminarSuchtreffer[] search(String... suchbegriffe) {
        Set<SeminarSuchtreffer> result = new HashSet<>();
        if (suchbegriffe != null && !(suchbegriffe.length == 0)) {
            int zahl = getCombinedLength(suchbegriffe) % MOCK_DATA.length;
            for (int i = 0; i <= zahl; i++) {
                result.add(MOCK_DATA[RANDOM.nextInt(MOCK_DATA.length)]);
            }
        }
        return result.toArray(new SeminarSuchtreffer[result.size()]);
    }

    private static int getCombinedLength(String... stringArray) {
        return Arrays.stream(stringArray).mapToInt(String::length).sum();
    }
}
