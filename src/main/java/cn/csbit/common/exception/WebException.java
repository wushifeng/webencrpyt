
package cn.csbit.common.exception;

/**
 * 公用的Exception, 自己的应用抛出的是这个
 */
public class WebException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public WebException() {
        super();
    }

    public WebException(String message) {
        super(message);
    }

    public WebException(Throwable cause) {
        super(cause);
    }

    public WebException(String message, Throwable cause) {
        super(message, cause);
    }
}
