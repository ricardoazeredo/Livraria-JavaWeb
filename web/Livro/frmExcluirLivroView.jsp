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
                <h1>Excluir Livro</h1>
            </div>
            <div class="col-md-3">
                <form action="deleteLivroAction.jsp" method="POST">
                    <label class="form-label">Código do Livro</label><br/>
                    <input class="form-control col-md-3" type="text" name="id" value="<%=request.getParameter("id")%>" />
                    <br/>

                    <label class="form-label">Nome</label><br/>
                    <input type="text" class="form-control col-md-3" name="nome" value="<%=request.getParameter("nome")%>" />
                    <br/>

                    <button class="btn btn-danger" type="submit">Excluir</button>
                </form>
            </div>
            
        </div>
    </body>
</html>
