package dev.patika.vetapp.v1.core.exception;

public class NotFoundDoctorException extends RuntimeException{
    public NotFoundDoctorException(String message) {
        super(message);
    }
}
