/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bookmark.url.functions;

/**
 *
 * @author Administrator
 */
import java.net.*;
import java.util.Properties;

public class CheckActiveUrl {

//    public static void main(String s[]) {
//        new CheckActiveUrl().doit();
//    }

    public void doit() {
        System.out.println(exists("http://edubiz.org"));
        System.out.println(exists("http://www.yahoo.com"));
    }

    public boolean exists(String URLName) {
        try {

            Properties systemSettings = System.getProperties();
            systemSettings.put("proxySet", "true");
            systemSettings.put("http.proxyHost", "proxy.mycompany.local");
            systemSettings.put("http.proxyPort", "80");

            URL u = new URL(URLName);
            HttpURLConnection con = (HttpURLConnection) u.openConnection();
            sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
            String encodedUserPwd =
                    encoder.encode("domain\\username:password".getBytes());
            con.setRequestProperty("Proxy-Authorization", "Basic " + encodedUserPwd);
            con.setRequestMethod("HEAD");
           // System.out.println(con.getResponseCode() + " : " + con.getResponseMessage());
            return (con.getResponseCode() == HttpURLConnection.HTTP_OK);
        } catch (UnknownHostException unknown) {
            System.out.println("Exception while connecting :");
           // unknown.printStackTrace();
             return false;
        } catch (Exception e) {
           // e.printStackTrace();
            return false;
        }
    }
}
