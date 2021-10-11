package data.horario;

import java.time.LocalDate;
import java.time.LocalTime;



public class Horario {
    
    public String data_Horario(){
        
        String msg = "";
        
        msg += "<p>" + LocalTime.now().getHour() + " h " + LocalTime.now().getMinute() + " min.</p>";
        msg += "<p>" + LocalDate.now().getDayOfMonth() + " de " + LocalDate.now().getMonth() + " de " + LocalDate.now().getYear() + "</p>";
        
        return msg;
    }
}
