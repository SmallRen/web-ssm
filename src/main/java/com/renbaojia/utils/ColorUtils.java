package com.renbaojia.utils;

import java.util.Random;

/**
 * Created by smallRen on 2017/10/8.
 */
public class ColorUtils {
    public static String getRandColor() {
        String r, g, b;
        Random random = new Random();
        r = Integer.toHexString(random.nextInt(230)).toUpperCase();
        g = Integer.toHexString(random.nextInt(230)).toUpperCase();
        b = Integer.toHexString(random.nextInt(230)).toUpperCase();
        r = r.length() == 1 ? "0" + r : r;
        g = g.length() == 1 ? "0" + g : g;
        b = b.length() == 1 ? "0" + b : b;
        return "#" + r + g + b;

    }
}
