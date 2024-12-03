/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Validator;

import controllers.service.ViecLamService;
import java.util.regex.Pattern;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import model.entity.ViecLam;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author ASUS
 */
public class ViecLamValidator implements ConstraintValidator<ViecLamConstraint, String> {

    private Pattern pattern;
    @Autowired
    private ViecLamService viecLamService;

    @Override
    public void initialize(ViecLamConstraint constraintAnnotation) {
        pattern = Pattern.compile("\\d{2}[A-Z]\\d-\\d{5}");
        //  d2 (2 ky tu dau tien la so)
        // A-Z chu viet Hoa
        //d 1 chu so
        //- ky tu -
        //d{5} 5 ky tu so

    }

    // 
    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        ViecLam vl = viecLamService.findById(value);
        return vl != null;

    }

    // Check chay
    public boolean isValidBienSoXe(String input) {
        // Kiểm tra độ dài phải là 10 ký tự
        if (input == null || input.length() != 10) {
            return false;
        }

        // Kiểm tra 2 ký tự đầu phải là số
        if (!Character.isDigit(input.charAt(0)) || !Character.isDigit(input.charAt(1))) {
            return false;
        }

        // Kiểm tra ký tự thứ 3 phải là chữ cái từ 'A' đến 'F'
        char thirdChar = input.charAt(2);
        if (thirdChar < 'A' || thirdChar > 'F') {
            return false;
        }

        if (!Character.isDigit(input.charAt(3))) {
            return false;
        }

        // Kiểm tra ký tự thứ 5 phải là dấu '-'
        if (input.charAt(4) != '-') {
            return false;
        }

        // Kiểm tra 5 ký tự cuối phải là số
        for (int i = 5; i < 10; i++) {
            if (!Character.isDigit(input.charAt(i))) {
                return false;
            }
        }

        // Nếu qua tất cả các kiểm tra, chuỗi hợp lệ
        return true;
    }

}
