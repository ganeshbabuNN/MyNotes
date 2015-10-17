
/**
 * AccountServiceMessageReceiverInOut.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.5.3  Built on : Nov 12, 2010 (02:24:07 CET)
 */
        package com.ganesh.axis2.account;

        /**
        *  AccountServiceMessageReceiverInOut message receiver
        */

        public class AccountServiceMessageReceiverInOut extends org.apache.axis2.receivers.AbstractInOutMessageReceiver{


        public void invokeBusinessLogic(org.apache.axis2.context.MessageContext msgContext, org.apache.axis2.context.MessageContext newMsgContext)
        throws org.apache.axis2.AxisFault{

        try {

        // get the implementation class for the Web Service
        Object obj = getTheImplementationObject(msgContext);

        AccountServiceSkeleton skel = (AccountServiceSkeleton)obj;
        //Out Envelop
        org.apache.axiom.soap.SOAPEnvelope envelope = null;
        //Find the axisOperation that has been set by the Dispatch phase.
        org.apache.axis2.description.AxisOperation op = msgContext.getOperationContext().getAxisOperation();
        if (op == null) {
        throw new org.apache.axis2.AxisFault("Operation is not located, if this is doclit style the SOAP-ACTION should specified via the SOAP Action to use the RawXMLProvider");
        }

        java.lang.String methodName;
        if((op.getName() != null) && ((methodName = org.apache.axis2.util.JavaUtils.xmlNameToJavaIdentifier(op.getName().getLocalPart())) != null)){

        

            if("withdraw".equals(methodName)){
                
                com.ganesh.axis2.account.UserMessage userMessage5 = null;
	                        com.ganesh.axis2.account.Account wrappedParam =
                                                             (com.ganesh.axis2.account.Account)fromOM(
                                    msgContext.getEnvelope().getBody().getFirstElement(),
                                    com.ganesh.axis2.account.Account.class,
                                    getEnvelopeNamespaces(msgContext.getEnvelope()));
                                                
                                               userMessage5 =
                                                   
                                                   
                                                         skel.withdraw(wrappedParam)
                                                    ;
                                            
                                        envelope = toEnvelope(getSOAPFactory(msgContext), userMessage5, false);
                                    } else 

            if("deposit".equals(methodName)){
                
                com.ganesh.axis2.account.UserMessage userMessage7 = null;
	                        com.ganesh.axis2.account.Account wrappedParam =
                                                             (com.ganesh.axis2.account.Account)fromOM(
                                    msgContext.getEnvelope().getBody().getFirstElement(),
                                    com.ganesh.axis2.account.Account.class,
                                    getEnvelopeNamespaces(msgContext.getEnvelope()));
                                                
                                               userMessage7 =
                                                   
                                                   
                                                         skel.deposit(wrappedParam)
                                                    ;
                                            
                                        envelope = toEnvelope(getSOAPFactory(msgContext), userMessage7, false);
                                    } else 

            if("getBal".equals(methodName)){
                
                com.ganesh.axis2.account.Account account9 = null;
	                        com.ganesh.axis2.account.Account wrappedParam =
                                                             (com.ganesh.axis2.account.Account)fromOM(
                                    msgContext.getEnvelope().getBody().getFirstElement(),
                                    com.ganesh.axis2.account.Account.class,
                                    getEnvelopeNamespaces(msgContext.getEnvelope()));
                                                
                                               account9 =
                                                   
                                                   
                                                         skel.getBal(wrappedParam)
                                                    ;
                                            
                                        envelope = toEnvelope(getSOAPFactory(msgContext), account9, false);
                                    
            } else {
              throw new java.lang.RuntimeException("method not found");
            }
        

        newMsgContext.setEnvelope(envelope);
        }
        }
        catch (java.lang.Exception e) {
        throw org.apache.axis2.AxisFault.makeFault(e);
        }
        }
        
        //
            private  org.apache.axiom.om.OMElement  toOM(com.ganesh.axis2.account.Account param, boolean optimizeContent)
            throws org.apache.axis2.AxisFault {

            
                        try{
                             return param.getOMElement(com.ganesh.axis2.account.Account.MY_QNAME,
                                          org.apache.axiom.om.OMAbstractFactory.getOMFactory());
                        } catch(org.apache.axis2.databinding.ADBException e){
                            throw org.apache.axis2.AxisFault.makeFault(e);
                        }
                    

            }
        
            private  org.apache.axiom.om.OMElement  toOM(com.ganesh.axis2.account.UserMessage param, boolean optimizeContent)
            throws org.apache.axis2.AxisFault {

            
                        try{
                             return param.getOMElement(com.ganesh.axis2.account.UserMessage.MY_QNAME,
                                          org.apache.axiom.om.OMAbstractFactory.getOMFactory());
                        } catch(org.apache.axis2.databinding.ADBException e){
                            throw org.apache.axis2.AxisFault.makeFault(e);
                        }
                    

            }
        
                    private  org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory, com.ganesh.axis2.account.UserMessage param, boolean optimizeContent)
                        throws org.apache.axis2.AxisFault{
                      try{
                          org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
                           
                                    emptyEnvelope.getBody().addChild(param.getOMElement(com.ganesh.axis2.account.UserMessage.MY_QNAME,factory));
                                

                         return emptyEnvelope;
                    } catch(org.apache.axis2.databinding.ADBException e){
                        throw org.apache.axis2.AxisFault.makeFault(e);
                    }
                    }
                    
                         private com.ganesh.axis2.account.UserMessage wrapwithdraw(){
                                com.ganesh.axis2.account.UserMessage wrappedElement = new com.ganesh.axis2.account.UserMessage();
                                return wrappedElement;
                         }
                    
                         private com.ganesh.axis2.account.UserMessage wrapdeposit(){
                                com.ganesh.axis2.account.UserMessage wrappedElement = new com.ganesh.axis2.account.UserMessage();
                                return wrappedElement;
                         }
                    
                    private  org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory, com.ganesh.axis2.account.Account param, boolean optimizeContent)
                        throws org.apache.axis2.AxisFault{
                      try{
                          org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
                           
                                    emptyEnvelope.getBody().addChild(param.getOMElement(com.ganesh.axis2.account.Account.MY_QNAME,factory));
                                

                         return emptyEnvelope;
                    } catch(org.apache.axis2.databinding.ADBException e){
                        throw org.apache.axis2.AxisFault.makeFault(e);
                    }
                    }
                    
                         private com.ganesh.axis2.account.Account wrapgetBal(){
                                com.ganesh.axis2.account.Account wrappedElement = new com.ganesh.axis2.account.Account();
                                return wrappedElement;
                         }
                    


        /**
        *  get the default envelope
        */
        private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory){
        return factory.getDefaultEnvelope();
        }


        private  java.lang.Object fromOM(
        org.apache.axiom.om.OMElement param,
        java.lang.Class type,
        java.util.Map extraNamespaces) throws org.apache.axis2.AxisFault{

        try {
        
                if (com.ganesh.axis2.account.Account.class.equals(type)){
                
                           return com.ganesh.axis2.account.Account.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
                if (com.ganesh.axis2.account.UserMessage.class.equals(type)){
                
                           return com.ganesh.axis2.account.UserMessage.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
                if (com.ganesh.axis2.account.Account.class.equals(type)){
                
                           return com.ganesh.axis2.account.Account.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
                if (com.ganesh.axis2.account.UserMessage.class.equals(type)){
                
                           return com.ganesh.axis2.account.UserMessage.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
                if (com.ganesh.axis2.account.Account.class.equals(type)){
                
                           return com.ganesh.axis2.account.Account.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
                if (com.ganesh.axis2.account.Account.class.equals(type)){
                
                           return com.ganesh.axis2.account.Account.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
        } catch (java.lang.Exception e) {
        throw org.apache.axis2.AxisFault.makeFault(e);
        }
           return null;
        }



    

        /**
        *  A utility method that copies the namepaces from the SOAPEnvelope
        */
        private java.util.Map getEnvelopeNamespaces(org.apache.axiom.soap.SOAPEnvelope env){
        java.util.Map returnMap = new java.util.HashMap();
        java.util.Iterator namespaceIterator = env.getAllDeclaredNamespaces();
        while (namespaceIterator.hasNext()) {
        org.apache.axiom.om.OMNamespace ns = (org.apache.axiom.om.OMNamespace) namespaceIterator.next();
        returnMap.put(ns.getPrefix(),ns.getNamespaceURI());
        }
        return returnMap;
        }

        private org.apache.axis2.AxisFault createAxisFault(java.lang.Exception e) {
        org.apache.axis2.AxisFault f;
        Throwable cause = e.getCause();
        if (cause != null) {
            f = new org.apache.axis2.AxisFault(e.getMessage(), cause);
        } else {
            f = new org.apache.axis2.AxisFault(e.getMessage());
        }

        return f;
    }

        }//end of class
    