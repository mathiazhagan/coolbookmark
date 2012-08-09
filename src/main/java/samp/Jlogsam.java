/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

/**
 *
 * @author D.Mathiazhagan
 */
import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.MultiPartEmail;
import org.apache.log4j.Logger;

public class Jlogsam {

    static final Logger logger = Logger.getLogger(Jlogsam.class);

    public static void main(String[] args) throws EmailException {

        logger.info("Addition Started");

        int a = 5;
        int b = 5;
        int c;
        logger.isDebugEnabled();
        logger.debug(" Debug value of A " + a);
        logger.debug("Debug value of B " + b);

        try {
            c = a / b;
            logger.debug("Debug value of C =A/B " + c);
        } catch (Exception e) {
            logger.error("Error from addition " + e);
        }
        logger.info("Addition Ended");
//        EmailAttachment attachment = new EmailAttachment();
//        attachment.setPath("D:/myapp/a.png");
//        attachment.setDisposition(EmailAttachment.ATTACHMENT);
//        attachment.setDescription("Picture of John");
//        attachment.setName("John");
//
//        // Create the email message
//        MultiPartEmail email = new MultiPartEmail();
//        email.setHostName("smtp.gmail.com");
//        email.setSmtpPort(465);
//        email.setAuthenticator(new DefaultAuthenticator("edubiztech@gmail.com", "newEduBiz"));
//        email.setFrom("er.mathi@gmail.com");
//        email.setSubject("TestMail");
//        email.setMsg("This is a test mail ... :-)");
//        email.addTo("mathi@edubiz.org");
//        email.send();
//
//        // add the attachment
//        email.attach(attachment);
//
//        // send the email
//        email.send();

    }
}

