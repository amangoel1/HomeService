//package com.cts.homeservice.service;
//
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.InputStreamReader;
//import java.net.URL;
//import java.nio.charset.Charset;
//import java.text.ParseException;
//
//import org.json.JSONException;
//import org.json.simple.JSONArray;
//import org.json.simple.JSONObject;
//import org.json.simple.parser.JSONParser;
//import org.springframework.stereotype.Service;
//
//@Service
//public class LocationServiceImpl implements LocationService{
//
//	@Override
//	public String getLatLong(String locality)throws IOException, JSONException, ParseException  {
//		// TODO Auto-generated method stub
//		 InputStream is = new URL("https://maps.googleapis.com/maps/api/geocode/json?address="+locality+"&key=AIzaSyDIT6TcATl_SOeXkPJes-8-WgmVe2zljFE").openStream();
//		    try {
//		      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
//		      StringBuilder sb = new StringBuilder();
//		      int cp;
//		      while ((cp = rd.read()) != -1) {
//		        sb.append((char) cp);
//		      }
//		      String jsonText = sb.toString();
//		      
//		      //System.out.println(json.toString());
//		
//		      JSONParser parser = new JSONParser();
//	          Object obj = parser.parse(sb.toString());
//	          JSONObject jb = (JSONObject) obj;
//		      
//	          JSONArray jsonObject1 = (JSONArray) jb.get("results");
//	          
//	          JSONObject detail = (JSONObject) jsonObject1.get(0);
//	          
//	          JSONObject geometry = (JSONObject) detail.get("geometry");
//	          
//	          JSONObject location = (JSONObject) geometry.get("location");
//	          
//	          
//	          return location.get("lat")+","+location.get("lng");
//	          	
//		    }
//		    catch (Exception e) {
//				// TODO: handle exception
//			}
//		    return null;
//	}
//
//	@Override
//	public String getVicinity(String latLong) throws IOException, JSONException, ParseException{
//		 InputStream is = new URL("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="+latLong+"&radius=10000&type=regions&key=AIzaSyDIT6TcATl_SOeXkPJes-8-WgmVe2zljFE").openStream();
//		 String result=""; 
//		 try {
//		      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
//		      StringBuilder sb = new StringBuilder();
//		      int cp;
//		      while ((cp = rd.read()) != -1) {
//		        sb.append((char) cp);
//		      }
//		      String jsonText = sb.toString();
//		      
//		      //System.out.println(json.toString());
//		
//		      JSONParser parser = new JSONParser();
//	          Object obj = parser.parse(sb.toString());
//	          JSONObject jb = (JSONObject) obj;
//		      
//	          JSONArray jsonObject1 = (JSONArray) jb.get("results");
//	          
//	          for(int i=0; i< jsonObject1.size();i++) {
//	        	  JSONObject jsonObject2 = (JSONObject)jsonObject1.get(i);
//	        	  result += (jsonObject2.get("vicinity"));
//	        	  
//	          }
//	          
//	          	
//		 }
//		 catch (Exception e) {
//			// TODO: handle exception
//			 return null;
//		}
//		 
//		 System.out.println(result);
//		 return result;
//
//}
//}