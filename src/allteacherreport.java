

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: allteacherreport
 *
 */
 public class allteacherreport extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public allteacherreport() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		double i=0;
		double tab[][]= new double[8][4];
		double avg[]= new double[9];
		double ovr[]= new double[100];
		double x1,y1,z1,v1;
		PrintWriter out=response.getWriter();
		try{
			String str,str1,str2,sql;
			int m,n,p=0;
			double x,y,z,v;
			for(m=0;m<8;m++)
			{
				for(n=0;n<4;n++)
				{
					tab[m][n]=0;
				}
			}
			for(n=0;n<=8;n++)
			{
				avg[n]=0;
			}
			for(n=0;n<100;n++)
			{
				ovr[n]=0;
			}
			ResultSet rs;
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection c1=DriverManager.getConnection("jdbc:odbc:abc","root","root");
			Statement s =c1.createStatement();
			sql="select * from teacherreportA";
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				str=rs.getString("dname");	
				str1=rs.getString("tname");
				str2=rs.getString("sub");
					v=rs.getInt(4);
					x=rs.getInt(5);
					y=rs.getInt(6);
					z=rs.getInt(7);
					i=v+x+y+z;
					tab[0][0]=(v/i)*100;
					tab[0][1]=(x/i)*100;
					tab[0][2]=(y/i)*100;
					tab[0][3]=(z/i)*100;
			}
			avg[0]=((tab[0][0]*10 + (tab[0][1]*7.5) + tab[0][2]*5 + (tab[0][3]*2.5))/100);
			sql="select * from teacherreportB";
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				str=rs.getString("dname");	
				str1=rs.getString("tname");
				str2=rs.getString("sub");
					v=rs.getInt(4);
					x=rs.getInt(5);
					y=rs.getInt(6);
					z=rs.getInt(7);
					i=v+x+y+z;
					tab[1][0]=((v/i)*100);
					tab[1][1]=((x/i)*100);
					tab[1][2]=((y/i)*100);
					tab[1][3]=((z/i)*100);
			}
			avg[1]=((tab[1][0]*10 + (tab[1][1]*7.5) + tab[1][2]*5 + (tab[1][3]*2.5))/100);
			sql="select * from teacherreportC";
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				str=rs.getString("dname");	
				str1=rs.getString("tname");
				str2=rs.getString("sub");
				if(dname.compareTo(str)==0 && tname.compareTo(str1)==0 && sub.compareTo(str2)==0)
				{	
					v=rs.getInt(4);
					x=rs.getInt(5);
					y=rs.getInt(6);
					z=rs.getInt(7);
					i=v+x+y+z;
					v1=(v/i)*100;
					x1=(x/i)*100;
					y1=(y/i)*100;
					z1=(z/i)*100;
					tab[2][0]+=v1;
					tab[2][1]+=x1;
					tab[2][2]+=y1;
					tab[2][3]+=z1;	
				}
			}
			avg[2]=((tab[2][0]*10 + (tab[2][1]*7.5) + tab[2][2]*5 + (tab[2][3]*2.5))/100);
			sql="select * from teacherreportD";
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				str=rs.getString("dname");	
				str1=rs.getString("tname");
				str2=rs.getString("sub");
				if(dname.compareTo(str)==0 && tname.compareTo(str1)==0 && sub.compareTo(str2)==0)
				{	
					v=rs.getInt(4);
					x=rs.getInt(5);
					y=rs.getInt(6);
					z=rs.getInt(7);
					i=v+x+y+z;
					v1=(v/i)*100;
					x1=(x/i)*100;
					y1=(y/i)*100;
					z1=(z/i)*100;
					tab[3][0]+=v1;
					tab[3][1]+=x1;
					tab[3][2]+=y1;
					tab[3][3]+=z1;
				}
			}
			avg[3]=((tab[3][0]*10 + (tab[3][1]*7.5) + tab[3][2]*5 + (tab[3][3]*2.5))/100);
			sql="select * from teacherreportE";
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				str=rs.getString("dname");	
				str1=rs.getString("tname");
				str2=rs.getString("sub");
				if(dname.compareTo(str)==0 && tname.compareTo(str1)==0 && sub.compareTo(str2)==0)
				{	
					v=rs.getInt(4);
					x=rs.getInt(5);
					y=rs.getInt(6);
					z=rs.getInt(7);
					i=v+x+y+z;
					v1=(v/i)*100;
					x1=(x/i)*100;
					y1=(y/i)*100;
					z1=(z/i)*100;
					tab[4][0]+=v1;
					tab[4][1]+=x1;
					tab[4][2]+=y1;
					tab[4][3]+=z1;
				}
			}
			avg[4]=((tab[4][0]*10 + (tab[4][1]*7.5) + tab[4][2]*5 + (tab[4][3]*2.5))/100);
			sql="select * from teacherreportF";
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				str=rs.getString("dname");	
				str1=rs.getString("tname");
				str2=rs.getString("sub");
				if(dname.compareTo(str)==0 && tname.compareTo(str1)==0 && sub.compareTo(str2)==0)
				{	
					v=rs.getInt(4);
					x=rs.getInt(5);
					y=rs.getInt(6);
					z=rs.getInt(7);
					i=v+x+y+z;
					v1=(v/i)*100;
					x1=(x/i)*100;
					y1=(y/i)*100;
					z1=(z/i)*100;
					tab[5][0]+=v1;
					tab[5][1]+=x1;
					tab[5][2]+=y1;
					tab[5][3]+=z1;
				}
			}
			avg[5]=((tab[5][0]*10 + (tab[5][1]*7.5) + tab[5][2]*5 + (tab[5][3]*2.5))/100);
			sql="select * from teacherreportG";
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				str=rs.getString("dname");	
				str1=rs.getString("tname");
				str2=rs.getString("sub");
				if(dname.compareTo(str)==0 && tname.compareTo(str1)==0 && sub.compareTo(str2)==0)
				{	
					v=rs.getInt(4);
					x=rs.getInt(5);
					y=rs.getInt(6);
					z=rs.getInt(7);
					i=v+x+y+z;
					v1=(v/i)*100;
					x1=(x/i)*100;
					y1=(y/i)*100;
					z1=(z/i)*100;
					tab[6][0]+=v1;
					tab[6][1]+=x1;
					tab[6][2]+=y1;
					tab[6][3]+=z1;
				}
			}
			avg[6]=((tab[6][0]*10 + (tab[6][1]*7.5) + tab[6][2]*5 + (tab[6][3]*2.5))/100);
			sql="select * from teacherreportH";
			rs=s.executeQuery(sql);
			while(rs.next())
			{
				str=rs.getString("dname");	
				str1=rs.getString("tname");
				str2=rs.getString("sub");
				if(dname.compareTo(str)==0 && tname.compareTo(str1)==0 && sub.compareTo(str2)==0)
				{	
					v=rs.getInt(4);
					x=rs.getInt(5);
					y=rs.getInt(6);
					z=rs.getInt(7);
					i=v+x+y+z;
					v1=(v/i)*100;
					x1=(x/i)*100;
					y1=(y/i)*100;
					z1=(z/i)*100;
					tab[7][0]+=v1;
					tab[7][1]+=x1;
					tab[7][2]+=y1;
					tab[7][3]+=z1;
				}
			}
			avg[7]=((tab[7][0]*10 + (tab[7][1]*7.5) + tab[7][2]*5 + (tab[7][3]*2.5))/100);
			avg[8]=((avg[0]+avg[1]+avg[2]+avg[3]+avg[4]+avg[5]+avg[6]+avg[7])/8);		
		}catch(Exception e){out.println(e);}
		
		if(i !=0)
		{
		out.println("<html>");
		out.println("<head>");
		out.println("<meta http-equiv="+"Content-Type"+" content="+"text/html; charset=ISO-8859-1"+">");
		out.println("<title>Report</title>");
		out.println("</head>");
		out.println("<body style="+"background-color:cyan"+">");
		out.println("<center>" +
					"<img src=logo.png width=780"+" height="+"151"+" alt="+"logo"+">" +
					"<marquee bgcolor="+"Yellow"+" behavior=alternate width="+"100%"+">TEACHER REPORT</marquee>" +
					"</center>" +
					"<br><br><br>" +
					"<center>" +
					"<table border="+"1"+" cellspacing=0 cellpadding=5 >" +
					"<tr>" +
					"<th align=left>NAME :</th>" +
					"<th align=left>"+tname+"</th>" +
					"<th align=left>DEPARTMENT :</th>" +
					"<th align=left>"+dname+"</th>" +
					"</tr>" +
					"<tr>" +
					"<th align=left>NO OF FORMS :</th>" +
					"<th align=left>"+(int)i+"</th>" +
					"<th align=left>SUBJECT :</th>" +
					"<th align=left>"+sub+"</th>" +
					"</tr>" +
					"</table>" +
					"<table border="+"1"+" cellspacing=0 cellpadding=5 >" +
					"<tr>"+
					"<th align=left>Performance Variables</th>" +
					"<th>Excellent</th>" +
					"<th>V. Good</th>" +
					"<th>Good</th>" +
					"<th>Fair</th>" +
					"<th align=left>Wt. Avg Index</th>" +
					"</tr>" +
					"<tr>" +
					"<th></th>" +
					"<th>(10)</th>" +
					"<th>(7.5)</th>" +
					"<th>(5)</th>" +
					"<th>(2.5)</th>" +
					"<th></th>" +
					"</tr>" +
					"<caption>The Numbers Represent Student Response in %</caption>" +
					"<tr>" +
					"<th align=left>Communication Skills :</th>" +
					"<th>"+((double)(Math.round(tab[0][0]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[0][1]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[0][2]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[0][3]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(avg[0]*100))/100)+"</th>" +
					"</tr>" +
					"<tr>" +
					"<th align=left>Ability To Explain & Clear Doubts :</th>" +
					"<th>"+((double)(Math.round(tab[1][0]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[1][1]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[1][2]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[1][3]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(avg[1]*100))/100)+"</th>" +
					"</tr>" +
					"<tr>" +
					"<th align=left>Presentation:</th>" +
					"<th>"+((double)(Math.round(tab[2][0]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[2][1]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[2][2]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[2][3]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(avg[2]*100))/100)+"</th>" +
					"</tr>" +
					"<tr>" +
					"<th align=left>Teaching Methodology :</th>" +
					"<th>"+((double)(Math.round(tab[3][0]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[3][1]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[3][2]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[3][3]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(avg[3]*100))/100)+"</th>" +
					"</tr>" +
					"<tr>" +
					"<th align=left>Overall Interest Created :</th>" +
					"<th>"+((double)(Math.round(tab[4][0]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[4][1]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[4][2]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[4][3]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(avg[4]*100))/100)+"</th>" +
					"</tr>" +
					"<tr>" +
					"<th align=left>Regular And Punctual :</th>" +
					"<th>"+((double)(Math.round(tab[5][0]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[5][1]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[5][2]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[5][3]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(avg[5]*100))/100)+"</th>" +
					"</tr>" +
					"<tr>" +
					"<th align=left>Maintains Desciplain of Class :</th>" +
					"<th>"+((double)(Math.round(tab[6][0]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[6][1]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[6][2]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[6][3]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(avg[6]*100))/100)+"</th>" +
					"</tr>" +
					"<tr>" +
					"<th align=left>Attitude Towards Student :</th>" +
					"<th>"+((double)(Math.round(tab[7][0]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[7][1]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[7][2]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(tab[7][3]*100))/100)+"</th>" +
					"<th>"+((double)(Math.round(avg[7]*100))/100)+"</th>" +
					"</tr>" +
					"<th align=left>OVERALL RATINGS :</th>" +
					"<th></th>" +
					"<th></th>" +
					"<th></th>" +
					"<th></th>" +
					"<th>"+((double)(Math.round(avg[8]*100))/100)+"</th>" +
					"</tr>" +
					"</table>" +
					"<h3>" +
					"<a href="+"adminhome.html"+">BACK TO HOME PAGE</a><br><br>" +
					"</h3>" +
					"</center>");
		out.println("</body>");
		out.println("</html>");
		}
		else
		{
			{out.println("No Feedback for This Teacher");}
		}
	}   	  	    
}