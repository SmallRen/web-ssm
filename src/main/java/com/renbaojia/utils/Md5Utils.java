package com.renbaojia.utils;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

import java.security.MessageDigest;

/**
 * Created by smallRen on 2017/10/10.
 */
public class Md5Utils {

    // 测试方法
    public static void main(String[] args) {
        String pwd = "123456";
        System.out.println("加密前： " + pwd);
        System.err.println("加密后： " + Md5Utils.getMD5(pwd));
        Object renbaojia961009 = SimpleHash("18181005550 ", "renbaojia961009");
        System.out.println(renbaojia961009);
    }

    /**
     * 生成md5
     *
     * @param message
     * @return
     */
    public static String getMD5(String message) {
        String md5str = "";
        try {
            // 1 创建一个提供信息摘要算法的对象，初始化为md5算法对象
            MessageDigest md = MessageDigest.getInstance("MD5");

            // 2 将消息变成byte数组
            byte[] input = message.getBytes();

            // 3 计算后获得字节数组,这就是那128位了
            byte[] buff = md.digest(input);

            // 4 把数组每一字节（一个字节占八位）换成16进制连成md5字符串
            md5str = bytesToHex(buff);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return md5str;
    }

    /**
     * 二进制转十六进制
     *
     * @param bytes
     * @return
     */
    public static String bytesToHex(byte[] bytes) {
        StringBuffer md5str = new StringBuffer();
        // 把数组每一字节换成16进制连成md5字符串
        int digital;
        for (int i = 0; i < bytes.length; i++) {
            digital = bytes[i];

            if (digital < 0) {
                digital += 256;
            }
            if (digital < 16) {
                md5str.append("0");
            }
            md5str.append(Integer.toHexString(digital));
        }
        return md5str.toString().toUpperCase();
    }

    public static Object  SimpleHash(String phone, String password) {
        String hashAlgorithmName = "MD5";
        Object credentials = password;
        Object salt = ByteSource.Util.bytes(phone);
        int hashIterations = 1024;
        Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
     return  result;
    }


}

