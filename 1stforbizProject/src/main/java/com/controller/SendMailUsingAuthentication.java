package com.controller;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

/*
To use this program, change values for the following three constants,

SMTP_HOST_NAME -- Has your SMTP Host Name
SMTP_AUTH_USER -- Has your SMTP Authentication UserName
SMTP_AUTH_PWD  -- Has your SMTP Authentication Password

Next change values for fields

emailMsgTxt  -- Message Text for the Email
emailSubjectTxt  -- Subject for email
emailFromAddress -- Email Address whose name will appears as "from" address

Next change value for "emailList".
This String array has List of all Email Addresses to Email Email needs to be sent to.


Next to run the program, execute it as follows,

SendMailUsingAuthentication authProg = new SendMailUsingAuthentication();

 */
public class SendMailUsingAuthentication {

    private static final String SMTP_HOST_NAME = "smtp.gmail.com";
    private static final String SMTP_AUTH_USER = "mentor@edubiz.org";
    private static final String SMTP_AUTH_PWD = "EduBiz_888";
    private static final int SMTP_HOST_PORT = 465;
    private static final String emailMsgTxt = "Online Order Confirmation Message. Also include the Tracking Number.";
    private static final String emailSubjectTxt = "Order Confirmation Subject";
    private static final String emailFromAddress = "er.mathi@gmail.com";
    // Add List of Email address to who email needs to be sent to
    private static final String[] emailList = {"narendrabattula@gmail.com", "narendrabattula_56@rediffmail.com"};

//    public static void main(String args[]) throws Exception {
//        SendMailUsingAuthentication smtpMailSender = new SendMailUsingAuthentication();
//        smtpMailSender.test(emailList, emailFromAddress, emailSubjectTxt, emailMsgTxt);
//        System.out.println("Sucessfully Sent mail to All Users");
//    }

    public void test(String recipients[], String emailid, String subject, String content) throws Exception {
        Properties props = new Properties();

        props.put("mail.transport.protocol", "smtps");
        props.put("mail.smtps.host", SMTP_HOST_NAME);
        props.put("mail.smtps.auth", "true");
        // props.put("mail.smtps.quitwait", "false");
        Authenticator auth = new SMTPAuthenticator();
        Session mailSession = Session.getDefaultInstance(props,auth);
        mailSession.setDebug(true);
        Transport transport = mailSession.getTransport();

        MimeMessage message = new MimeMessage(mailSession);
        message.setSubject(subject);
        message.setContent(content, "text/plain");
        InternetAddress addressFrom = new InternetAddress(emailid);
        message.setFrom(addressFrom);


        InternetAddress[] addressTo = new InternetAddress[recipients.length];
        for (int i = 0; i < recipients.length; i++) {
            addressTo[i] = new InternetAddress(recipients[i]);
        }
        message.setRecipients(Message.RecipientType.TO, addressTo);


        message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailid));

        transport.connect(SMTP_HOST_NAME, SMTP_HOST_PORT, SMTP_AUTH_USER, SMTP_AUTH_PWD);

        transport.sendMessage(message,message.getRecipients(Message.RecipientType.TO));
        transport.close();

    }
    
    private class SMTPAuthenticator extends javax.mail.Authenticator
{

        @Override
    public PasswordAuthentication getPasswordAuthentication()
    {
        String username = SMTP_AUTH_USER;
        String password = SMTP_AUTH_PWD;
        return new PasswordAuthentication(username, password);
    }
}

}