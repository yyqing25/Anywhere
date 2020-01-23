package cn.anywhere.common;

/**
 * 工具类
 * 公共方法
 */
public class WebUtil {
    //私有化该类,不能new对象
    private WebUtil(){}

    //公共资源:最后设计成静态的方法
    /*非空校验*/
    public static boolean isNull(String str){
        return (str == null || "".equals(str.trim())) ? true : false;
    }
}
