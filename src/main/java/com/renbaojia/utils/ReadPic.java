package com.renbaojia.utils;

import com.drew.imaging.ImageMetadataReader;
import com.drew.imaging.ImageProcessingException;
import com.drew.metadata.*;
import com.renbaojia.model.Address;
import com.renbaojia.model.Camera;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by smallRen on 2017/10/7.
 */
public class ReadPic {

    public static void main(String[] args) {

        List<Camera> cameraList = ReadPic.getFile("H:\\IDEA\\ssm-see\\src\\main\\webapp\\assets\\img");
    }

    /**
     * 处理 单张 图片
     *
     * @return void
     * @date 2015-7-25 下午7:30:47
     */
    public static List<Camera> getFile(String path) {
        List<Camera> cameraList = new ArrayList<>();
        // get file list where the path has
        File file = new File(path);
        // get the folder list
        File[] array = file.listFiles();

        for (int i = 0; i < array.length; i++) {
            if (array[i].isFile()) {
                // only take file name
                System.out.println(array[i].getPath());
                cameraList.add(readPic(array[i].getPath()));
            }
        }
        return cameraList;
    }

    private static Camera readPic(String name) {
        Camera camera = new Camera();
        File f = new File(name);
        Metadata metadata = null;
        try {
            metadata = ImageMetadataReader.readMetadata(f);
        } catch (ImageProcessingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        for (Directory directory : metadata.getDirectories()) {
            for (Tag tag : directory.getTags()) {
                //System.out.println(tag);
                String tagName = tag.getTagName();  //标签名
                String desc = tag.getDescription(); //标签信息
                if (tagName.equals("Make")) {
                    camera.setCameraName(desc);
                    System.out.println("相机名: " + desc);
                } else if (tagName.equals("Model")) {
                    camera.setCameraModel(desc);
                    System.out.println("相机型号: " + desc);
                } else if (tagName.equals("File Name")) {
                    camera.setImgName("/img/detialsimage/" + desc);
                    camera.setImgSimple("/img/simpleimg/" + desc);
                    System.out.println("图片名: " + desc);
                } else if (tagName.equals("File Size")) {
                    camera.setImgSize(formetFileSize(f.length()));
                    System.out.println("图片大小: " + formetFileSize(f.length()));
                } else if (tagName.equals("Date/Time Original")) {

                    Date date = null;
                    SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy:MM:dd HH:mm:ss" );
                    try {
                          date = sdf.parse(desc);
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                    SimpleDateFormat sdf1 =   new SimpleDateFormat( "yyyy年MM月dd日 " );
                    String str = sdf1.format(date);
                    camera.setImgDate(str);
                    System.out.println("拍摄时间: " + str);
                } else if (tagName.equals("GPS Latitude")) {
                    System.out.println("纬度 : " + pointToLatlong(desc));
                    System.out.println("纬度(度分秒格式) : " + desc);
                    camera.setLat(pointToLatlong(desc));
                } else if (tagName.equals("GPS Longitude")) {
                    System.out.println("经度: " + pointToLatlong(desc));
                    System.out.println("经度(度分秒格式): " + desc);
                    camera.setLog(pointToLatlong(desc));
                }
            }
        }
        if (camera.getLat() != null) {
            System.out.println(camera.getLat());
            System.out.println(camera.getLog());
            Address add = GetLocation.getAdd(camera.getLat(), camera.getLog());
            System.out.println(add.getLocation());
            System.out.println(add.getConcretely());
            camera.setLocation(add.getLocation());
            camera.setConcretely(add.getConcretely());

        }
        return camera;
    }

    public static String formetFileSize(long fileS) {

        DecimalFormat df = new DecimalFormat("#.0");
        String fileSizeString = "";
        if (fileS < 1024) {
            fileSizeString = df.format((double) fileS) + "B";
        } else if (fileS < 1048576) {
            fileSizeString = df.format((double) fileS / 1024) + "K";
        } else if (fileS < 1073741824) {
            fileSizeString = df.format((double) fileS / 1048576) + "M";
        } else {
            fileSizeString = df.format((double) fileS / 1073741824) + "G";
        }
        return fileSizeString;
    }

    /**
     * 经纬度格式  转换为  度分秒格式 ,如果需要的话可以调用该方法进行转换
     *
     * @param point 坐标点
     * @return
     */
    public static String pointToLatlong(String point) {
        Double du = Double.parseDouble(point.substring(0, point.indexOf("°")).trim());
        Double fen = Double.parseDouble(point.substring(point.indexOf("°") + 1, point.indexOf("'")).trim());
        Double miao = Double.parseDouble(point.substring(point.indexOf("'") + 1, point.indexOf("\"")).trim());
        Double duStr = du + fen / 60 + miao / 60 / 60;
        return duStr.toString();
    }
}