/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package samp;

import org.apache.log4j.Logger;

/**
 *
 * @author Administrator
 */
public class Logt1 {
      static final Logger logger = Logger.getLogger(Logt1.class);

    public static void main(String[] args) {
     
        logger.debug("1Sample2 debug message");
        logger.info("1Sample2 info message");
        logger.warn("1Sample2 warn message");
        logger.error("1Sample2 error message");
        logger.fatal("1Sample2 fatal message");
    }
}


