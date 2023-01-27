

<%@page import="br.com.livraria.DAO.AutorDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.livraria.DTO.Autor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    
    <body>
        <jsp:include page="../Includes/navbar.jsp">
             <jsp:param name="title" value="Cadastro do Livro" />
         </jsp:include>
        <div class="container">
            <form action="addLivroAction.jsp" method="POST">
                <div class="col-md-4">
                    <label class="form-label">Nome</label><br/>
                    <input type="text" name="nome" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label class="form-label">ISBN</label><br/>
                    <input type="text" name="isbn" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label class="form-label">Valor</label><br/>
                    <input type="text" name="valor" class="form-control" />
                </div>
                <div class="col-md-4">
                    <label class="form-label">Autor</label><br/>
                    <select name="autor" class="form-control">
                        <%
                            AutorDAO autorDAO = new AutorDAO();
                            ArrayList<Autor> lista = autorDAO.PesquisarAutor();

                            for (int i = 0; i < lista.size(); i++) {
                               %>
                                <option  value="<%=lista.get(i).getAutorId()%>"><%=lista.get(i).getAutorId()%> - <%=lista.get(i).getNomeAutor()%></option>
                                <%
                            }
                        %>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Cadastrar</button>
            </form>
        </div>            
    </body>
</html>
