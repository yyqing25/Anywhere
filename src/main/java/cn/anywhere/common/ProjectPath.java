package cn.anywhere.common;

import java.io.File;
import java.io.IOException;

/**
 * 获取工程路径
 */
public class ProjectPath {
    /*当前项目的路径*/
    public static String getProjectPath(){
        File file = null;
        String filePath = null;
        try {
            file = new File("");
            filePath = file.getCanonicalPath();
        } catch (IOException e) {
        }
        System.out.println(filePath);
        return filePath;
    }
}
