package com.ganesh.ejb3;

import javax.ejb.Remote;
import javax.jws.WebService;

@WebService
@Remote
public interface CreditCardRemote {
		public void deductAmout(int ccno,double amt);

}
