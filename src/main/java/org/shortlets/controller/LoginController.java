package org.shortlets.controller;



import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import org.shortlets.dao.SimuladorSGBDUsuario;
import br.com.caelum.vraptor.view.Results;
import java.util.List;
import java.util.Random;
import javax.persistence.EntityManager;
import org.shortlets.model.GraficoConsumoMensal;
import org.shortlets.service.GeladeiraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

@Resource
public class LoginController {

    private SimuladorSGBDUsuario dao;
    private Result result;
    private EntityManager manager;
    private GeladeiraService service;
    
    @Autowired
   
    public LoginController(SimuladorSGBDUsuario dao, Result result, EntityManager manager, GeladeiraService _service) {
        this.dao = dao;
        this.result = result;
        this.manager = manager;
        this.service = _service;
        service.setEntityManager(manager);
    }
    
    @Get("/login/")
    public void index() {
        UserDetails principal = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        
//        int[]range = new int[2];
//        range[0]=0;
//        range[1]=9;
//        List list = service.findRange(range);
//        result.include("listGeladeira", list);
        //${total_alertas} ${total_msg} ${total_produtos}
        result.include("gcm",getGraficoConsumoMensal());
        result.include("total_alertas",randonInt(1,10));
        result.include("total_msg",randonInt(1,10));
        result.include("total_produtos",randonInt(1,10));
        result.include("user", principal);
        result.include("totalGeladeira",service.count());
    }
    
    private static Integer randonInt(int min,int max){
        return new Random().nextInt(max-min)+min;
    }
    private GraficoConsumoMensal getGraficoConsumoMensal(){
        GraficoConsumoMensal gcm = new GraficoConsumoMensal();
        gcm.setJan(randonInt(1,100));
        gcm.setFev(randonInt(1,100));
        gcm.setMar(randonInt(1,100));
        gcm.setAbr(randonInt(1,100));
        gcm.setMai(randonInt(1,100));
        gcm.setJun(randonInt(1,100));
        gcm.setJul(randonInt(1,100));
        gcm.setAgo(randonInt(1,100));
        gcm.setSet(randonInt(1,100));
        gcm.setOut(randonInt(1,100));
        gcm.setNov(randonInt(1,100));
        gcm.setDez(randonInt(1,100));
        return gcm;
        
        
    }
    

    @Get("/login/count")
    public void seila() {
        //dao.queryDoAdmin();
        result.use(Results.http()).body("contador de Geladeira:: "+service.count()+ "");
    }
    // @Secured("ROLE_ADMIN")
    @Get("/login/admin")
    public void admin() {
        result.use(Results.http()).body("top secret admin stuff");
    }

    //@PreAuthorize("hasRole('ROLE_ADMIN') or hasRole('ROLE_FINANCEIRO')")
    @Get("/login/financeiroOuAdmin")
    public void financeiroOuAdmin() {
        result.use(Results.http()).body("vc só pode ser do financeiro ou admin!");
    }
}
