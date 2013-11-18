package org.shortlets.controller.components;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.resource.ResourceMethod;

/**
 * An interceptor that manages Entity Manager Transaction. All requests are intercepted
 * and a transaction is created before execution. If the request has no erros, the transaction
 * will commited, or a rollback occurs otherwise. 
 * 
 * @author Lucas Cavalcanti
 */
@Component
@Intercepts
public class JPATransactionInterceptor implements Interceptor {

    private final EntityManager manager;
    private final Validator validator;

    public JPATransactionInterceptor(EntityManager manager, Validator validator) {
        this.manager = manager;
        this.validator = validator;
    }
    public void intercept(InterceptorStack stack, ResourceMethod method, Object instance) {
        EntityTransaction transaction = null;
        try {
            transaction = manager.getTransaction();
            transaction.begin();
            
            stack.next(method, instance);
            
            if (!validator.hasErrors() && transaction.isActive()) {
                transaction.commit();
            }
        } finally {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
        }
    }
    public boolean accepts(ResourceMethod method) {
        return true; 
    }
}

