package com.renbaojia.utils;

import com.renbaojia.model.Address;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by smallRen on 2017/10/7.
 */
public class GetLocation {
    public static void main(String[] args) {
        Address add = getAdd("31.46691111111111", "103.17583333333334");
        System.out.println(add.getLocation());
        System.out.println(add.getConcretely());
    }

    public static Address getAdd(String lat, String log) {
        Address address = null;
        String urlString = "http://apis.map.qq.com/ws/geocoder/v1/?location=" + lat + "," + log + "&get_poi=0&key=UUYBZ-QZXWK-GIPJU-ALA43-MY3N2-46FBC";
        String res = "";
        try {
            URL url = new URL(urlString);
            HttpURLConnection conn = ( HttpURLConnection) url.openConnection();
            conn.setDoOutput(true);

            conn.setRequestMethod("GET");
            BufferedReader in = new  BufferedReader(new  InputStreamReader(conn.getInputStream(), "UTF-8"));
            String line;
            while ((line = in.readLine()) != null) {
                res += line + "\n";
            }
            in.close();
        } catch (Exception e) {
            System.out.println("error in wapaction,and e is " + e.getMessage());
        }
        try {
            JSONObject jsonObject = new JSONObject(res);
            if (jsonObject.getString("status").equals("0")) {
                JSONObject jb = jsonObject.getJSONObject("result");
                String address1 = jb.getString("address");
                JSONObject object = jb.getJSONObject("formatted_addresses");
                String recommend = object.getString("recommend");
                address = new Address(address1, recommend);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return address;
    }


}

