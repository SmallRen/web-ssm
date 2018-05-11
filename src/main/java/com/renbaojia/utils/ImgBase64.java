package com.renbaojia.utils;

import sun.misc.BASE64Encoder;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by smallRen on 2018/1/20.
 */
public class ImgBase64 {


    public static String UrlToBasbe64(String imageUrl) {
        byte[] data = null;

        try {

            // 创建URL
            URL url = new URL(imageUrl);
            // 创建链接
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5 * 1000);
            InputStream inStream = conn.getInputStream();
            data = new byte[inStream.available()];
            inStream.read(data);
            inStream.close();
        } catch (IOException e)

        {
            e.printStackTrace();

        }
        BASE64Encoder encoder = new BASE64Encoder();
        return encoder.encode(data);//返回Base64编码过的字节数组字符串
    }

    //图片转化成base64字符串
    public static String GetImageStr() {//将图片文件转化为字节数组字符串，并对其进行Base64编码处理

        File file = new File(ImgBase64.class.getClassLoader().getResource("../../img/favicon.ico").getPath());
        String imgFile = "img/favicon.ico";//待处理的图片
        String imgFile1 = "img/favicon.ico";//待处理的图片
        InputStream in = null;
        byte[] data = null;
        //读取图片字节数组
        try {
            in = new FileInputStream(file);
            data = new byte[in.available()];
            in.read(data);
            in.close();
        } catch (IOException e) {
            try {
                in = new FileInputStream(imgFile1);
                data = new byte[in.available()];
                in.read(data);
                in.close();

            } catch (IOException e1) {
                e1.printStackTrace();
            }

        }
        //对字节数组Base64编码
        BASE64Encoder encoder = new BASE64Encoder();
        return encoder.encode(data);//返回Base64编码过的字节数组字符串
    }

    public static void main(String[] args) {
        String s = ImgBase64.UrlToBasbe64("http://qzapp.qlogo.cn/qzapp/101420494/D697E3E2556A8E33B5D15F92E92101A4/100");
        System.out.println(s);
    }
}
