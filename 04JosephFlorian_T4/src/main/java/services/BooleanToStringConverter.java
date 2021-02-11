package services;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class BooleanToStringConverter implements AttributeConverter<Boolean, String> {

    @Override
    public String convertToDatabaseColumn(Boolean value) {
        if (value == true) {
            return "S";
        }
        if (value == false) {
            return "N";
        }
        return "";
    }

    @Override
    public Boolean convertToEntityAttribute(String value) {
        return "S".equals(value);
    }

}
