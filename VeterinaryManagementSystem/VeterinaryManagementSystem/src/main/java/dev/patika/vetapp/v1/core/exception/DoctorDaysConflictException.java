package dev.patika.vetapp.v1.core.exception;

public class DoctorDaysConflictException extends RuntimeException{
    public DoctorDaysConflictException(String message) {
        super(message);
    }
}
