<body bgcolor=yellow><P>
<% int size=1;
   for(int i=1;i<=3;i++){
       size=size+1;
%>    <font size=<%=size%>>
         <jsp:doBody />
      </font>
<% }
%>
</P></body>

