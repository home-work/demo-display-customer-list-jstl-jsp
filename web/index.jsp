<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Collection" %><%--
  Created by IntelliJ IDEA.
  User: dat
  Date: 10/24/18
  Time: 1:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1>My Garage</h1>
<%!
    public class MotorBike {
        private String name;
        private String engine;
        private String displacement;
        private String image;

        public MotorBike(String name, String engine, String displacement, String image) {
            this.name = name;
            this.engine = engine;
            this.displacement = displacement;
            this.image = image;
        }

        public String getName() {
            return name;
        }

        public String getEngine() {
            return engine;
        }

        public String getDisplacement() {
            return displacement;
        }

        public String getImage() {
            return image;
        }
    }

    List<MotorBike> list = new ArrayList<>();
%>

<%
    list.add(new MotorBike("Suzuki GSXR 1000", "V4", "997cc", "images/suzuki.jpeg"));
    list.add(new MotorBike("Ducati Panigale V4S", "I4", "1103cc", "images/ducati.jpg"));
    list.add(new MotorBike("Yamaha YZF-R1M", "I4", "998cc", "images/yamaha.jpg"));
    list.add(new MotorBike("BMW S1000RR", "I4", "999cc", "images/bmw.jpg"));
    list.add(new MotorBike("Aprilia RSV4", "V4", "999cc", "images/aprilia.jpg"));
%>

<table style="width:100%">
    <tr>
        <th>STT</th>
        <th>Xe</th>
        <th>Động cơ</th>
        <th>Dung tích</th>
        <th>Ảnh</th>
    </tr>
    <%
        int i = 0;
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            i++;
            MotorBike motorBike = (MotorBike) iterator.next();
    %>
    <tr>
        <td><%=i%>
        </td>
        <td><%=motorBike.getName()%>
        </td>
        <td><%=motorBike.engine%>
        </td>
        <td><%=motorBike.getDisplacement()%>
        </td>
        <td><img class="img" src="<%=motorBike.getImage()%>"></td>
    </tr>
    <%
        }
        list.clear();
    %>

</table>
</body>
</html>
