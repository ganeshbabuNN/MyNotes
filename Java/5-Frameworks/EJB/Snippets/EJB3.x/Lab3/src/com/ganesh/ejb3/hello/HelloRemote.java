package com.ganesh.ejb3.hello;

import javax.ejb.Remote;

@Remote
public interface HelloRemote {
	public String getMessage(String name);
}
