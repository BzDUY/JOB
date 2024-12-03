/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Validator;

/**
 *
 * @author ASUS
 */
import static java.lang.annotation.ElementType.*;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Target({FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = {ViecLamValidator.class})
public @interface ViecLamConstraint {

    String message() default "“Khong ton tai viec lam trong he thong";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
