package controller.vacinacao;

import java.util.List;

import exception.VacinacaoException;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import model.entity.vacinacao.Vacinacao;
import service.vacinacao.VacinacaoService;

@Path("/vacinacao")
public class VacinacaoController {
	
	private VacinacaoService service = new VacinacaoService();
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Vacinacao salvar(Vacinacao novaVacinacao) throws VacinacaoException{
		 return service.salvar(novaVacinacao);
	}
	
	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public boolean atualizar(Vacinacao vacinacaoEditada) throws VacinacaoException{
		 return service.atualizar(vacinacaoEditada);
	}
	
	@DELETE
	@Path("/{id}")
	public boolean excluir(@PathParam("id") int id){
		 return service.excluir(id);
	}
	
	@GET
	@Path("/{id}")
	public Vacinacao consultarPorId(@PathParam("id") int id){
		 return service.consultarPorId(id);
	}
	
	@GET
	@Path("/todas")
	public List<Vacinacao> consultarTodas(){
		 return service.consultarTodas();
	}
	
	@GET
	@Path("/pessoa/{idPessoa}")
	public List<Vacinacao> consultarPorIdPessoa(@PathParam("idPessoa") int idPessoa){
		 return service.consultarPorIdPessoa(idPessoa);
	}
}