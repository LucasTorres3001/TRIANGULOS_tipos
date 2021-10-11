package tipos.triangulos;



public class Triangulos {
    
    private short seg1, seg2, seg3;

    public short getSeg1() {
        return seg1;
    }

    public void setSeg1(short seg1) {
        this.seg1 = seg1;
    }

    public short getSeg2() {
        return seg2;
    }

    public void setSeg2(short seg2) {
        this.seg2 = seg2;
    }

    public short getSeg3() {
        return seg3;
    }

    public void setSeg3(short seg3) {
        this.seg3 = seg3;
    }
    
    public String tipos(){
        
        String msg = "";
        
        try{
            
            if((this.getSeg1() == this.getSeg2()) && (this.getSeg1() == this.getSeg3())){
                msg += "<p>Os segmentos formam um <strong>triângulo equilátero</strong>.</p>";
            }
            else if((((this.getSeg1() + this.getSeg2()) > this.getSeg3()) && (this.getSeg1() == this.getSeg2())) || (((this.getSeg1() + this.getSeg3()) > this.getSeg2()) && (this.getSeg1() == this.getSeg3())) || (((this.getSeg2() + this.getSeg3()) > this.getSeg1()) && (this.getSeg2() == this.getSeg3()))){
                msg += "<p>Os segmentos formam um <strong>triângulo isósceles</strong>.</p>";
            }
            else if(((this.getSeg1() + this.getSeg2()) > this.getSeg3()) && ((this.getSeg1() + this.getSeg3()) > this.getSeg2()) && ((this.getSeg2() + (this.getSeg3()) > this.getSeg1()))){
                msg += "<p>Os segmentos formam um <strong>triângulo escaleno</strong>.</p>";
            }
            else{
                msg += "<p>Os segmentos não são capazes de formarem triângulos! :( ...</p>";
            }
        }
        catch(Exception e){
            msg += "<h3>Error :/ ... " + e.getMessage() + "</h3>";
        }
        
        return msg;
    }
}
