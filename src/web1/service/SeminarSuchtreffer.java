package web1.service;

import java.util.Objects;

/**
 * Java-Bean fuer einen Treffer bei einer Seminarsuche.
 */
public class SeminarSuchtreffer {
    String titel;
    String seminarleiter;

    public SeminarSuchtreffer() {
    }
    
    public SeminarSuchtreffer(String titel, String seminarleiter) {
        this.titel = titel;
        this.seminarleiter = seminarleiter;
    }

    public String getSeminarleiter() {
        return seminarleiter;
    }

    public String getTitel() {
        return titel;
    }

    public void setSeminarleiter(String seminarleiter) {
        this.seminarleiter = seminarleiter;
    }

    public void setTitel(String titel) {
        this.titel = titel;
    }   

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((titel == null) ? 0: titel.hashCode());
        result = prime * result + ((seminarleiter == null) ? 0: seminarleiter.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final SeminarSuchtreffer other = (SeminarSuchtreffer) obj;
        if (!Objects.equals(this.titel, other.titel)) {
            return false;
        }
        if (!Objects.equals(this.seminarleiter, other.seminarleiter)) {
            return false;
        }
        return true;
    }
}
