/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ethereo.persistence;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class SendEmail {
    //Campos necesarios de la clase
    private static String emailFrom ="soporteethereocontable@gmail.com";
    private static String passwordFrom="cnornxqdnhgrticq";
    private String emailTo;
    private String subject;
    private String content;
    private Properties mProperties;
    private Session mSession;
    private MimeMessage mEmail;
    //Constructor
    public SendEmail(){
        mProperties = new Properties();
    }
    protected void createEmail(String emailTo, String subject, String content){
        this.emailTo = emailTo;
        this.subject = subject;
        this.content = content;
        //Configuración del protocolo para el envio de menssajes
        mProperties.put("mail.smtp.host", "smtp.gmail.com");
        mProperties.put("mail.smtp.ssl.trust","smtp.gmail.com");
        mProperties.setProperty("mail.smtp.starttls.enable", "true");
        mProperties.setProperty("mail.smtp.port", "587");
        mProperties.setProperty("mail.smtp.user", emailFrom);
        mProperties.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
        mProperties.setProperty("mail.smtp.auth","true");
        mSession = Session.getDefaultInstance(mProperties);
        try {
            mEmail = new MimeMessage(mSession);
            mEmail.setFrom(new InternetAddress(emailFrom));
            mEmail.setRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
            mEmail.setSubject(subject);
            mEmail.setText(content,"ISO-8859-1","html");
        } catch (AddressException ex) {
            Logger.getLogger(SendEmail.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        } catch (MessagingException ex) {
            Logger.getLogger(SendEmail.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.toString());
        }
    }
    protected void send(){
        try {
            Transport mTransport = mSession.getTransport("smtp");
            mTransport.connect(emailFrom,passwordFrom);
            mTransport.sendMessage(mEmail, mEmail.getRecipients(Message.RecipientType.TO));
            mTransport.close();
        } catch (NoSuchProviderException ex) {
            System.out.println(ex.toString());
            Logger.getLogger(SendEmail.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            System.out.println(ex.toString());
            Logger.getLogger(SendEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
