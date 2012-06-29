/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

/**
 *
 * @author Administrator
 */
import org.apache.log4j.Logger;

public class Jlogsam {

    static final Logger logger = Logger.getLogger(Jlogsam.class);

    public static void main(String[] args) {
     
        logger.debug("Sample debug message");
        logger.info("Sample info message");
        logger.warn("Sample warn message");
        logger.error("Sample error message");
        logger.fatal("Sample fatal message");
    }
}
