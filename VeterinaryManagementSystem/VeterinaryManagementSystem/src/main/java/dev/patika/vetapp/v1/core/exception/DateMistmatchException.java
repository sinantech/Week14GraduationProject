package dev.patika.vetapp.v1.core.exception;

public class DateMistmatchException extends RuntimeException{
    public DateMistmatchException(String message) {
        super(message);
    }
}
