package cn.csbit.common.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;

public class CustomExceptionResolver extends SimpleMappingExceptionResolver {

    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
                                         Exception ex) {
        // 以前有的Controller方法没有加@ResposeBody和返回值
        /*
		 * HandlerMethod handlerMethod = (HandlerMethod) handler; ResponseBody
		 * body = handlerMethod.getMethodAnnotation(ResponseBody.class); //
		 * 判断有没有@ResponseBody的注解没有的话调用父方法 if (body == null) { return
		 * super.doResolveException(request, response, handlerMethod, ex); }
		 */
        // 所有的异常都在这里进行记录。其他各处捕获到的异常，要么抛出，要么记录。注意：抛出时，需要记录以下方法的入参，以便debug使用。
        //cn.csbit.core.util.Log.error("exception:", ex);

        ModelAndView mv = new ModelAndView();
        // 设置状态码,注意这里不能设置成500，设成500JQuery不会出错误提示 //并且不会有任何反应
        response.setStatus(HttpStatus.OK.value());
        // 设置ContentType
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        // 避免乱码
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Cache-Control", "no-cache, must-revalidate");
        try {
            /// getOutputStream getWriter不能同时调用，否则会出现异常
            // 其他的地方使用的是 getOutputStream
            Writer writer = new OutputStreamWriter(response.getOutputStream());
            writer.write(ex.getMessage());
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return mv;
    }
}
