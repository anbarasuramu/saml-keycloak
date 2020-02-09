package com.keycloak;

import javax.servlet.http.HttpServletRequest;

import org.keycloak.adapters.saml.SamlPrincipal;

public class Controller {
	
	   private SamlPrincipal getAccount(HttpServletRequest req) {
	        SamlPrincipal principal = (SamlPrincipal)req.getUserPrincipal();
	        return principal;
	    }

	    public boolean isLoggedIn(HttpServletRequest req) {
	        return getAccount(req) != null;
	    }
	    
	    public String getFirstName(HttpServletRequest req) {
	        return getFriendlyAttrib(req, "givenName");
	    }

	    public String getLastName(HttpServletRequest req) {
	        return getFriendlyAttrib(req, "surname");
	    }

	    public String getEmail(HttpServletRequest req) {
	        return getFriendlyAttrib(req, "email");
	    }

	    public String getUsername(HttpServletRequest req) {
	        return getAccount(req).getName();
	    }

	    private String getFriendlyAttrib(HttpServletRequest req, String attribName) {
	        SamlPrincipal principal = getAccount(req);
	        return principal.getFriendlyAttribute(attribName);
	    }

}
