package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BeanTelefone;
import bean.BeanUsuario;
import dao.DaoTelefone;
import dao.DaoUsuario;

@WebServlet("/salvarTelefones")
public class ServletsTelefone extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private DaoUsuario daoUsuario = new DaoUsuario();
	private DaoTelefone daoTelefone = new DaoTelefone();
       
    public ServletsTelefone() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		try {
			String acao = request.getParameter("acao");
			String user = request.getParameter("user");
			
			if (user != null) {
			BeanUsuario beanUsuario = daoUsuario.consultar(user);
			
				if(acao.equalsIgnoreCase("addFone")) {
					request.getSession().setAttribute("userEscolhido", beanUsuario);
					request.setAttribute("userEscolhido", beanUsuario);
					RequestDispatcher view = request.getRequestDispatcher("/telefones.jsp");
					request.setAttribute("telefone", daoTelefone.listar(beanUsuario.getId()));
					view.forward(request, response);
				} else if(acao.equalsIgnoreCase("deleteFone")) {
					String foneId = request.getParameter("foneId");
					daoTelefone.delete(foneId);
					
					RequestDispatcher view = request.getRequestDispatcher("/telefones.jsp");
					request.setAttribute("userEscolhido", beanUsuario);
					request.setAttribute("telefone", daoTelefone.listar(Long.parseLong(user)));
					request.setAttribute("msg", "Excluído Com Sucesso!");
					view.forward(request, response);
				}
				
			}else {
				RequestDispatcher view = request.getRequestDispatcher("/cadastroUsuario.jsp");
				request.setAttribute("usuarios", daoUsuario.listar());
				view.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		try {
			BeanUsuario beanUsuario = (BeanUsuario) request.getSession().getAttribute("userEscolhido");
			String numero = request.getParameter("numero");
			String tipo = request.getParameter("tipo");
			
			String acao = request.getParameter("acao");
			
			if (acao == null || (acao != null && !acao.equalsIgnoreCase("voltar"))) {
			
			if (numero == null || (numero != null && numero.isEmpty())){
				
				RequestDispatcher view = request.getRequestDispatcher("/telefones.jsp");
				request.setAttribute("telefone", daoTelefone.listar(beanUsuario.getId()));
				request.setAttribute("msg", "Informe o numero do telefone!");
				view.forward(request, response);
				
			}else {
			
				BeanTelefone beanTelefone = new BeanTelefone();
				beanTelefone.setNumero(numero);
				beanTelefone.setTipo(tipo);
				beanTelefone.setUsuario(beanUsuario.getId());
				daoTelefone.salvar(beanTelefone);
				request.getSession().setAttribute("userEscolhido", beanUsuario);
				request.setAttribute("userEscolhido", beanUsuario);
			
				RequestDispatcher view = request.getRequestDispatcher("/telefones.jsp");
				request.setAttribute("telefone", daoTelefone.listar(beanUsuario.getId()));
				request.setAttribute("msg", "Salvo Com Sucesso!");
				view.forward(request, response);
			
			}
			
			}else {
				RequestDispatcher view = request.getRequestDispatcher("/cadastroUsuario.jsp");
				request.setAttribute("usuarios", daoUsuario.listar());
				view.forward(request, response);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
