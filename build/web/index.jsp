<%@page import="data.horario.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <main>
            <header>
                <h1>Triângulos</h1>
            </header>
            <section>
                <form action="index2.jsp" method="POST" name="formulary" id="Formulary" target="Resposta">
                    <fieldset>
                        <legend>Segmentos do triângulo</legend>
                        <p>
                            <label for="Primeiro">1º segmento:</label>
                            <input type="number" name="primeiro" id="Primeiro" placeholder="primeiro segmento" title="Primeiro segmento" required="">
                        
                            <label for="Segundo">2º segmento:</label>
                            <input type="number" name="segundo" id="Segundo" placeholder="segundo segmento" title="Segundo segmento" required="">
                        
                            <label for="Terceiro">3º segmento:</label>
                            <input type="number" name="terceiro" id="Terceiro" placeholder="terceiro segmento" title="Terceiro segmento" required="">
                        </p>
                    </fieldset>
                    <br>
                    <button type="submit" name="mostrar" id="resposta" value="Resp" title="Resultado">Ver o resultado</button>
                </form>
                <br>
                <iframe name="Resposta" id="janela" height="144" width="676" title="Resposta"></iframe>
            </section>
            <center>
                <footer>
                    <%
                        Horario horario = new Horario();
                        
                        out.print(horario.data_Horario());
                        
                    %>
                </footer>
            </center>
        </main>
    </body>
</html>
