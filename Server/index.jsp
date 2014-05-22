/* JSP Demo Webservice to Fetch Current Date
 * Shashi Badhuk
 * http://shashibadhuk.blogspot.com
 * shashibadhuk.developer@gmail.com
 */
<%@ page import="java.io.*,java.util.*, javax.servlet.*,com.google.gson.*" %>
<% 

//Create HashMap for Associate Array
Map<String, String> map = new HashMap<String, String>();

//Find Current Date
Date d = new Date();

//Get Gson Object
Gson gobj = new Gson();

//store date in Associate Array
map.put("date", d.toString());

//Convert Array into JSON using Google Gson Library
String data = gobj.toJson(map);

//Print Date
out.println(data);
%>
