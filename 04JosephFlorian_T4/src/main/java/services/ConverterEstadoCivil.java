/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

@FacesConverter("ConverterEstadoCivil")
public class ConverterEstadoCivil implements Converter {

    @Override
    public Object getAsObject(FacesContext arg0, UIComponent arg1,
             String value
    ) {
        return value;
    }

    @Override
    public String getAsString(FacesContext arg0, UIComponent arg1,
             Object value
    ) {
        String condicion = "";
        if (value != null) {
            condicion = String.valueOf(value);
            switch (condicion) {
                case "S":
                    condicion = "Soltero";
                    break;
                case "C":
                    condicion = "Casado";
                    break;
            }
        }
        return condicion;
    }
}
