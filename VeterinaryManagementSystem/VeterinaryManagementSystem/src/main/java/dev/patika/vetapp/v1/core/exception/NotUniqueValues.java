package dev.patika.vetapp.v1.core.exception;

public class NotUniqueValues extends RuntimeException{
    public NotUniqueValues(String message) {
        super(message);
    }
}
