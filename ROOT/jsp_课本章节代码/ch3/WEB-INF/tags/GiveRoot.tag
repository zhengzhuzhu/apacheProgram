<%@ tag import="java.util.*" %>
<%@ attribute name="coefficientA" required="true" %>  
<%@ attribute name="coefficientB" required="true" %>
<%@ attribute name="coefficientC" required="true" %>
<%@ variable name-given="rootOne" variable-class="java.lang.Double" scope="AT_END" %>
<%@ variable name-given="rootTwo" variable-class="java.lang.Double" scope="AT_END" %>
  <%   double disk,root1,root2;
          double a=Double.parseDouble(coefficientA);
          double b=Double.parseDouble(coefficientB);
          double c=Double.parseDouble(coefficientC);
          disk=b*b-4*a*c;
         if(disk>=0&&a!=0){
              root1=(-b+Math.sqrt(disk))/(2*a);
              root2=(-b-Math.sqrt(disk))/(2*a);
              jspContext.setAttribute("rootOne",new Double(root1));     //为JSP页面返回对象rootOne
              jspContext.setAttribute("rootTwo",new Double(root2));    //为JSP页面返回对象rootTwo
        }
        else{
               jspContext.setAttribute("rootOne",null);     
               jspContext.setAttribute("rootTwo",null);  
        }
  %>
