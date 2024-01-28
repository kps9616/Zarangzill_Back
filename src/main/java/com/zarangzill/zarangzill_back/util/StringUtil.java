package com.zarangzill.zarangzill_back.util;

public class StringUtil {

    public static String checkNull(Object obj) {

        if(null == obj) {
            return "";
        }

        if("".equals(obj)) {
            return "";
        }

        return String.valueOf(obj);
    }
}
