package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

/*
沙箱账号:
买家账号fxaxnj5102@sandbox.com
登录密码111111
支付密码111111*/
public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101900725913";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCpvBUjMpX/u3BNEgaq1dWgJVE9eCwjOhm/XZa+oxPN1GNiNb8Tnfmk1McRhOKkv9ohmVo/aR63TeOled5lIlhGFTuzs4EILB1fh7Skty93Am4kSkS17jliXkRtTThf8bLhI2ovq98jOvtyxY9U4PcRGSAAZ8ndneyp6T46EBYXht57Y/bumBZLzog8V2oseqXRj9P9LB0AzTO7mXpBSOrmkSP1vW2y/2G0ckG4dNCDT8tCoDO02n+TqNejjoMTn7KIdJ5sOaNLNHMJ0vF+21IVPS80LGBoFeZL3SktPJO+/j9RGQ7knugIvGAzXGIk09qEqwLj+RK/onE05ZoulEHDAgMBAAECggEAWh2kr1JNN0BiCFk4tvze9a66akNiU7WmM+bRgRd+DTrlJSBZ+WVXRL8/jbqaxlOh0VLlCmOaTkIJSjLg85r/eP4O+4KjUB5z3eNj8kvb5Hii15uizWDUkLhx5gIomy/tBAFUgEjlKIRJOg9P4QWrxyUqy2xPTd1p6HAQfK1LvWMbebOEJw+AgPFLXmFOxfWc/KTjjsTfWApHprcVSKrfZwl8N3XB4zH51awzoeN/digBSMOZ74jIDWZJbiIS0n7XNX0Ue+JYFylVx5Zw2EHbxaCiJeF+ASdW84z8N5lp0BlnBRmDdgrf9nwwaGZ21RfFXg8VrLk8+MDjWZ0xuynhmQKBgQDtyRdJR0DbIb0ahNfyA0lPBVx/rn/fE2/eFzeVQG4O7r9KHrHkujVHXGDdW9B/Xi3I5aUjPU94eBiLHzg40CanNHyNAwamQHwij3yyxlq+xO34JH1JM4df8M5QFp1zX1EjQCTN4xX2tp3BEhcLMMZ8QKwnSOOcWfTO9reu3DZDXQKBgQC2vIigmPHkzrhozA6MFS2FXjOE5eDl2GYZdXOeVId8I4ujOgJlBibGtxw8DNXdyK01JUG78cQUdcFaDwykn2nB/p0q9L2QmughYkTv8KuwgRQZpmjsliwCPXPOwvxRwLBj4L6hFPh84zpjnoByd0B9w4hJzHW4qGVgTWe3XH5nnwKBgHISlmlBFYwKk321XSNtEC4olEdsn0uVN4WD/dZMIoBnaL1WHGFuM0EYwB9xfISd2bkW8jIFp6pTcvLK913J/cEZHOdJHFeFeAfcbiYVolMChmcUmkYTwk30aAVj1AUVJQeULhPXbSH+WY/V7dggfhf9rpjqDsdjIF5pXZU1b5LBAoGAd3ee40/apTo4+dqekBqwXgcOK46Wj+4AIhjVc+fTg+dBPX+JXT6+TyAbh27ky1CNXLd02EjhZnbt59D69Q17eObbHeBPpqB/roOuiieQN57L41EWO8aaEwTWF5EGoPQW3dVrC6jII+3ymHphg3RPZ2lUStsvA4CkdmdkrU39HgUCgYEA5GliQS0GKasufscaS68kAdmX+9Ns0KqWw6SdCX5F/9oof9CEUg3kjTAbu9bhy93/9GI/to+U5fsN9EnDcOXN1vBWwtFpzrZhy8llgTX+hY8ZezA4sgMbtuaMVwgEqpmvA7O1roCTYe0KiHiF0X+N+GO8pp3wLkJgsCOwjK2sTRQ=";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyBR0JpSnevmJ01MKJJt9OnVPBb/RIV6Y1czIXpsUdMHHCv8Me40n3+rXsUhFo3fRmn8+usY4cSCI27S+WuxSu3CWV3YGMW31jgDQbxZR9N8gzn4uB26GQ+buLumirVBAdU8uo1Nvc62B5mXdfqdoX6euiQ181+aEQs8l71xuEE9g6Gnlc1NaJ4rW7zaVCeTL/JafIw5VuLuQPkEwRtWEIXl30fjgZVnTI0wE1y/9FyoYDZ+m9wDxrgD22sKJ2WII2hmslvf6fI04T74GWiVO3sON9/qLl1jjznf5AjbQoP3mrofhitnWy1jk8jR3EO7AYS+xC1nOVew725n/Dxr2WQIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost/anywhere/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost/anywhere/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

