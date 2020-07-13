package com.jspWebApp;

import org.jetbrains.annotations.NotNull;

public class UtilService {

    public static @NotNull
    String passStringToUpper(String s){
        return "value "+s.toUpperCase()+"\nlength "+s.length();
    }
}
