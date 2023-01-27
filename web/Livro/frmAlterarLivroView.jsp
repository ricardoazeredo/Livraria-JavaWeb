<%@page import="br.com.livraria.DTO.Autor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.livraria.DAO.AutorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../Includes/head.jsp"></jsp:include>
    
    <body>
        <jsp:include page="../Includes/navbar.jsp">
             <jsp:param name="title" value="Editar Livro" />
         </jsp:include>
        <div class="container">
            <div>
                <h1>Editar Livro</h1>
            </div>
            <div class="col-md-4">
                <form action="editarLivroAction.jsp" method="POST">
                    <label class="form-label">Código do Livro</label>
                    <input type="text" class="form-control" name="id" value="<%=request.getParameter("id")%>" />
                    
                    <div class="mt-3">
                        <label class="form-label">Nome</label>
                        <input type="text" class="form-control col-md-4" name="nome" value="<%=request.getParameter("nome")%>" />
                    </div>
                    <div class="mt-3">
                        <label class="form-label">ISBN</label>
                        <input type="text" name="isbn" class="form-control col-md-4" value="<%=request.getParameter("isbn")%>" />
                    </div>
                    <div class="mt-3">
                        <label class="form-label">Valor</label>
                        <input type="text" name="valor" class="form-control col-md-4" value="<%=request.getParameter("valor")%>" />
                    </div>
                    <div class="mt-3">
                        <label class="form-label">Autor</label>
                        <select name="autorId" class="form-control">
                            <%
                                AutorDAO autorDAO = new AutorDAO();
                                ArrayList<Autor> lista = autorDAO.PesquisarAutor();
                                ArrayList<Autor> info = autorDAO.PesquisarAutorPorId(Integer.parseInt(request.getParameter("autorId")));
                               
                                for (int i = 0; i < lista.size(); i++) {
                                    for(int num = 0; num < info.size();num ++){
                                        if(info.get(num).getAutorId() == lista.get(i).getAutorId()){
                                         %>
                                         <option  value="<%=lista.get(i).getAutorId()%>" selected><%=lista.get(i).getAutorId()%> - <%=lista.get(i).getNomeAutor()%></option>
                                        <%
                                      
                                        } else {
                                        %>
                                         <option  value="<%=lista.get(i).getAutorId()%>"><%=lista.get(i).getAutorId()%> - <%=lista.get(i).getNomeAutor()%></option>
                                         <%
                                        }
                                    }    
                                }
                            %>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-success mt-3">Salvar</button>
                </form>
            </div>
            
        </div>
        
    </body>
</html>
