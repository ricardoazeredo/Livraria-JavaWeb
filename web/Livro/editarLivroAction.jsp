<%@page import="br.com.livraria.DAO.LivroDAO"%>
<%@page import="br.com.livraria.DTO.Livros"%>
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
                Livros livros = new Livros();
                livros.setLivroID(
                    Integer.parseInt(request.getParameter("id"))                    
                );
                livros.setNomeLivro(request.getParameter("nome"));
                livros.setIsbn(request.getParameter("isbn"));
                livros.setValor(Double.parseDouble(request.getParameter("valor")));
                livros.setAutorId(Integer.parseInt(request.getParameter("autorId")));

                LivroDAO livroDAO = new LivroDAO();
                livroDAO.AlterarLivro(livros);
                
                response.sendRedirect("listarLivro.jsp");
            } catch(Exception e){
                System.out.println("Erro"+ e);
            }
         %>
    </body>
</html>
