package com.ganesh.ejb3;

import javax.ejb.Stateless;
import javax.jws.WebService;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@WebService
@Stateless
public class CreditCardBean implements CreditCardRemote{
	@PersistenceContext
	EntityManager manager=null;
	public void deductAmout(int ccno, double amt) {
		CreditCard cc=(CreditCard)manager.getReference(CreditCard.class, ccno);
		double bal=cc.getBal();
		bal=bal-amt;
		cc.setBal(bal);
		manager.merge(cc);		
	}
}
