
<%@page import="br.com.livraria.DTO.Autor"%>
<%@page import="br.com.livraria.DAO.AutorDAO"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="br.com.livraria.DTO.LivroDigital"%>
<%@page import="br.com.livraria.DTO.LivroFisico"%>
<%@page import="br.com.livraria.DAO.LivroDAO"%>
<%@page import="br.com.livraria.DTO.Livros"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    
    <body>
        <jsp:include page="../Includes/navbar.jsp">
             <jsp:param name="title" value="Listar Livros" />
         </jsp:include>
        <div class="container">
            <h1>Listar Livros</h1>
            <table class="table">
                <thead>
                  <tr>    
                    <th scope="col">Código</th>
                    <th scope="col">Livro</th>                    
                    <th scope="col">ISBN</th>
                    <th scope="col">Valor</th>
                    <th scope="col">Físico</th>
                    <th scope="col">Digital</th>
                    <th scope="col">Autor</th>
                    <th scope="col" colspan="2">Ação</th>
                  </tr>
                </thead>
                <tbody>
                    
                        <%
                            try {
                                LivroDAO livroDAO = new LivroDAO();
                                ArrayList<Livros> lista = livroDAO.PesquisarLivro();
                                LivroFisico livroFisico = new LivroFisico();
                                LivroDigital livroDigital = new LivroDigital();
                                AutorDAO autorDAO = new AutorDAO();
                                ArrayList<Autor> autor = autorDAO.PesquisarAutor();
                                
                                
                                for (int i = 0; i < lista.size(); i++) {
                                   ArrayList<Autor> info = autorDAO.PesquisarAutorPorId(lista.get(i).getAutorId());
                                %>
                                <tr>
                                    
                                <%
                                    double valor = lista.get(i).getValor();
                                                                                                            
                                    out.print("<td>"+lista.get(i).getLivroID()+"</td>");
                                    out.print("<td>"+lista.get(i).getNomeLivro()+"</td>");                                    
                                    out.print("<td>"+lista.get(i).getIsbn()+"</td>");
                                    out.print("<td>"+String.format("%.2f",lista.get(i).getValor())+"</td>");
                                    out.print("<td>"+String.format("%.2f", livroFisico.MostrarDesconto(valor))+"</td>");
                                    out.print("<td>"+String.format("%.2f",livroDigital.MostrarDesconto(valor))+"</td>");
                                    
                                    out.print("<td>"+info.get(i).getNomeAutor()+"</td>");
                                    
                                    

                                    out.print("<td><a type='button' class='btn btn-primary me-2' href='frmAlterarLivroView.jsp?id=" 
                                                + lista.get(i).getLivroID() +
                                                "&nome="+ lista.get(i).getNomeLivro() + 
                                                "&isbn="+ lista.get(i).getIsbn()+
                                                "&valor="+ lista.get(i).getValor()+
                                                "&autorId="+ lista.get(i).getAutorId()+
                                                "'>Alterar </a>");
                                    out.print("<a type='button' class='btn btn-danger' href='frmExcluirLivroView.jsp?id=" 
                                                + lista.get(i).getLivroID() +
                                                "&nome="+ lista.get(i).getNomeLivro() + 
                                                "&isbn="+ lista.get(i).getIsbn()+
                                                "&valor="+ lista.get(i).getValor()+
                                                "&autorId="+ lista.get(i).getAutorId()+
                                                "'>Excluir </a></td>");                                                
                                %>
                                    
                                </tr>
                                <%
                                    
                                }
                            } catch (Exception e) {
                                out.print("Não há livros");
                            }

                       %>  
                             
                </tbody>
            </table>    
        </div>
         
    </body>
</html>
