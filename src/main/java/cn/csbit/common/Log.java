package cn.csbit.common;

import org.apache.log4j.LogManager;

/**
 * 记录日志的简写，代码中直接使用　cn.csbit.Log.i / w / e /d 即可
 */
public class Log {
    private static final org.apache.log4j.Logger log = LogManager.getLogger(Log.class);

    public static void i(Object message) {
        log.info(message);
    }

    // warn
    public static void w(Object message) {
        log.warn(message);
    }

    public static void w(Object message, Throwable t) {
        log.warn(message, t);
    }

    // error
    public static void e(Object message) {
        log.error(message);
    }

    public static void e(Object message, Throwable t) {
        log.error(message, t);
    }

    // debug
    public static void d(Object message) {
        log.debug(message);
    }

    public static void d(Object message, Throwable t) {
        log.debug(message, t);
    }
}
