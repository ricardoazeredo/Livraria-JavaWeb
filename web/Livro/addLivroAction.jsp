<%-- 
    Document   : addLivroAction
    Author     : Rico
--%>

<%@page import="br.com.livraria.DTO.Autor"%>
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
                Livros livro = new Livros();
                Autor autor = new Autor();
                
                livro.setNomeLivro(request.getParameter("nome"));
                livro.setIsbn(request.getParameter("isbn"));
                livro.setValor(Double.parseDouble(request.getParameter("valor")));
                livro.setAutorId(Integer.parseInt(request.getParameter("autor")));

                LivroDAO livroDAO = new LivroDAO();
                livroDAO.CadastrarLivro(livro);
                
                 response.sendRedirect("listarLivro.jsp");
            } catch(Exception e){
                
            }
         %>
    </body>
</html>
