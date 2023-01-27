
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.livraria.DAO.AutorDAO"%>
<%@page import="br.com.livraria.DTO.Autor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            try{
                Autor autor = new Autor();
                
                autor.setNomeAutor(request.getParameter("nome"));
                autor.setEmail(request.getParameter("email"));
                
                AutorDAO autorDAO = new AutorDAO();
                autorDAO.CadastrarAutor(autor);
                
                
                response.sendRedirect("frmLivroView.jsp");
            } catch(Exception e){
                out.println("Não cadastrou o autor. Erro: "+ e );
            }
         %>
    </body>
</html>
