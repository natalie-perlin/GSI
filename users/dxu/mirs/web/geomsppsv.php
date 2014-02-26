<?php
// insert header that forbids caching and carries doctype
// and html tag;
require('includes/noCacheHeader.inc');
?>
<META name="verify-v1" content="CwbLBcFt9+GqRTgaLZsENmPnSWNB5MStHHdYsB7U2nI=">
<title>STAR - MIRS Project - Geophysical Performances Monitoring (MSPPS)</title>
<?php
// style links and the icon link
// pulls in .css files for regular and print display
require('includes/styleLinks.inc');
?>

<?php

$sat='';  
$prod=''; 
$layer='';
$cend=''; 
$sfc='';  
$yr='';   
$mo='';   
$dy='';   

if(isset($_POST['sat']))   { $sat   = $_POST['sat'];   }
if(isset($_POST['prod']))  { $prod  = $_POST['prod'];  }
if(isset($_POST['layer'])) { $layer = $_POST['layer']; }
if(isset($_POST['cend']))  { $cend  = $_POST['cend'];  }
if(isset($_POST['sfc']))   { $sfc   = $_POST['sfc'];   }
if(isset($_POST['yr']))    { $yr    = $_POST['yr'];    }
if(isset($_POST['mo']))    { $mo    = $_POST['mo'];    }
if(isset($_POST['dy']))    { $dy    = $_POST['dy'];    }

echo "<script>\n";
echo " var sat   = '$sat';   \n";
echo " var prod  = '$prod';  \n";
echo " var layer = '$layer'; \n";
echo " var cend  = '$cend';  \n";
echo " var sfc   = '$sfc';   \n";
echo " var yr    = '$yr';    \n";
echo " var mo    = '$mo';    \n";
echo " var dy    = '$dy';    \n";
echo "</script>\n";

$sat2='';  
$prod2=''; 
$layer2='';
$cend2=''; 
$sfc2='';  
$yr2='';   
$mo2='';   
$dy2='';   

if(isset($_POST['sat2']))   { $sat2   = $_POST['sat2'];   }
if(isset($_POST['prod2']))  { $prod2  = $_POST['prod2'];  }
if(isset($_POST['layer2'])) { $layer2 = $_POST['layer2']; }
if(isset($_POST['cend2']))  { $cend2  = $_POST['cend2'];  }
if(isset($_POST['sfc2']))   { $sfc2   = $_POST['sfc2'];   }
if(isset($_POST['yr2']))    { $yr2    = $_POST['yr2'];    }
if(isset($_POST['mo2']))    { $mo2    = $_POST['mo2'];    }
if(isset($_POST['dy2']))    { $dy2    = $_POST['dy2'];    }

echo "<script>\n";
echo " var sat2   = '$sat2';   \n";
echo " var prod2  = '$prod2';  \n";
echo " var layer2 = '$layer2'; \n";
echo " var cend2  = '$cend2';  \n";
echo " var sfc2   = '$sfc2';   \n";
echo " var yr2    = '$yr2';    \n";
echo " var mo2    = '$mo2';    \n";
echo " var dy2    = '$dy2';    \n";
echo "</script>\n";

?>


<style type="text/css">

  select.optionvisible   {visibility:visible}
  select.optioninvisible {visibility:hidden}

  td.arrowvisible 	{visibility:visible}
  td.arrowinvisible 	{visibility:hidden} 
  
</style>

<script language="javascript" type="text/javascript" src="geomspps.js"></script>


</head>
<body  onLoad="loadInitialImagesV(sat,prod,layer,cend,sfc,yr,mo,dy)">
<?php
// insert banner rows
require('includes/banner.inc');

// insert gray link bar
require('includes/toolBar_withSearch.inc');
?>
  <tr>
    <td id="navCell">
			<?php
			// insert navigation div
			require('includes/Sample_NavDiv_geomsppsv.inc');
			?>
		</td>
		<td class="mainPanel"><a name="skipTarget"></a>
		
		<noscript><h3 class="noscriptWarning">
		Javascript is currently disabled on this computer. 
		Product animations on this page are generated with javascript.
		If you need static access to these images, please contact MIRS webmaster.</h3>
		</noscript>
		
			<div class="padding" id="monitor">
				<!-- DO NOT DELETE OR ALTER CODE ABOVE THIS COMMENT -->
				<!-- EXCEPT for the contents of the <title></title> TAG!! -->
				<!-- You can start project specific content HERE -->


				<FORM NAME=form action="geomspps.php" method="post">

				<table border="0" cellpadding="0" cellspacing="0" class="tableGrid" bgcolor="#eeeeee">
				
				<TR><TD align=center bgcolor="#eeeeee" height=18>
				<input  type=submit  value="3 X 2 Panel" style="background-color: lightblue" > &nbsp;&nbsp;
				<B><font size=4>MIRS Geophysical Performance Monitoring(MSPPS)</font></B>
				</TD></TR>

				<TR>
				<TD align=center>

				Mode:
				<select name="cend" onChange="loadImage();">
				<option value="as" >Asc</option>
				<option value="ds" >Des</option>
				</select>			  
				
				&nbsp;Sfc:
				<select name="sfc" onChange="loadImage();">
				<option value="sea" >Sea</option>
				<option value="lnd" >Land</option>
				<option value="all" >All</option>
				</select>
				
				<!--  			    
				&nbsp;Region:
				<select name="region">
				<option value="glb" >Globe</option>
				<option value="us"  >US</option>
				<option value="na"  >North America</option>
				<option value="eu"  >Europe</option>
				<option value="af"  >North Africa</option>
				<option value="as"  >Asia</option>
				</select-->
				
				&nbsp;Year:
				<select id="yr" name="yr" onChange="loadImage();">
				<option value="2011">2011</option> 
				<option value="2012">2012</option> 
				<option value="2013">2013</option>
				<option value="2014">2014</option> 
				<option value="2015">2015</option> 
				<option value="2016">2016</option> 
				<option value="2017">2017</option> 
				<option value="2018">2018</option> 
				<option value="2019">2019</option> 
				<option value="2020">2020</option>  
				</select>			  
				
				Month:
				<select id="mo" name="mo" onChange="loadImage();">	  
				<option value="01">Jan</option>
				<option value="02">Feb</option>
				<option value="03">Mar</option>
				<option value="04">Apr</option>
				<option value="05">May</option>
				<option value="06">Jun</option>
				<option value="07">Jul</option>
				<option value="08">Aug</option>
				<option value="09">Sep</option>
				<option value="10">Oct</option>
				<option value="11">Nov</option>
				<option value="12">Dec</option>
				</select>			  
				
				Day:
				<select id="dy" name="dy" onChange="loadImage();">	  
				<option value="01">1 </option>
				<option value="02">2 </option>
				<option value="03">3 </option>
				<option value="04">4 </option>
				<option value="05">5 </option>
				<option value="06">6 </option>
				<option value="07">7 </option>
				<option value="08">8 </option>
				<option value="09">9 </option>
				<option value="10">10</option>	      
				<option value="11">11</option>	      
				<option value="12">12</option>	      
				<option value="13">13</option>	      
				<option value="14">14</option>	      
				<option value="15">15</option>	      
				<option value="16">16</option>	      
				<option value="17">17</option>	      
				<option value="18">18</option>	      
				<option value="19">19</option>	      
				<option value="20">20</option>	      
				<option value="21">21</option>	      
				<option value="22">22</option>	      
				<option value="23">23</option>	      
				<option value="24">24</option>	      
				<option value="25">25</option>	      
				<option value="26">26</option>	      
				<option value="27">27</option>	      
				<option value="28">28</option>	      
				<option value="29">29</option>	     
				<option value="30">30</option>	     
				<option value="31">31</option>	     
				</select>			  

				&nbsp;Browse:
				<input type="button" onclick="rev();" value="<=">
				<input type="button" onclick="fwd();" value="=>">
				
				<br>
				  			    
				&nbsp;Sensor:
				<select name="sat" onChange="changeSensor( this.value ); loadImage();" >
				<option value="n18"	      >NOAA-18</option>
				<option value="n19"	      >NOAA-19</option>
				<option value="metopA"        >METOP-A</option>
				<option value="metopB"        >METOP-B</option>
				</select>

				&nbsp;Product:
				<select name="prod" onChange="changeProduct( this.value ); loadImage();">
				<option value="clw"    >CLW</option>
				<option value="em"     >Emissivity</option>   
				<option value="iwp"    >Ice Water Path</option>
				<option value="lwp"    >Liquid Water Path</option>
				<option value="rr"     >Rain Rate</option> 
				<option value="sice"   >Sea Ice Concentration</option>
				<option value="swe"    >Snow Water Equivalent</option>
				<option value="tskin"  >Land Surface Temperature</option>
				</select>

				<select id="layer" name="layer" class="optioninvisible" onChange="loadImage();">
				</select>


				</TD>
				</TR>


				<TR>
				  <TD align=center nowrap width=650 height=500>
				    <a id="href1" href="" target=_blank>
				    <img name="img1" src="" width=650 height=500 align=center alt="mirs retrieval" title="mirs retrieval"></a>
				  </TD>
				</TR>

				<TR>
				  <TD align=center nowrap width=650 height=500>
				    <a id="href2" href="" target=_blank>
				    <img name="img2" src="" width=650 height=500 align=center alt="mspps"></a>
				  </TD>
				</TR>

				<TR>
				  <TD align=center nowrap width=650 height=500>
				    <a id="href3" href="" target=_blank>
				    <img name="img3" src=""  width=650 height=500 align=center alt="difference of mirs and mspps"></a>
				  </TD>
				</TR>

				<TR>
				  <TD align=center nowrap width=650 height=500>
				    <a id="href4" href="" target=_blank>
				    <img name="img4" src=""  width=650 height=500 align=center alt="asymmetry of difference"></a>
				  </TD>
				</TR>

				<TR>
				  <TD align=center nowrap width=650 height=500>
				    <a id="href5" href="" target=_blank>
				    <img name="img5" src=""  width=650 height=500 align=center alt="scattered plot"></a>
				  </TD>
				</TR>

				<TR>
				  <TD align=center nowrap width=650 height=500>
				    <a id="href6" href="" target=_blank>
				    <img name="img6" src=""  width=650 height=500 align=center alt=""></a>
				  </TD>
				</TR>


				<TR>
				<TD align=center colspan=2>

				Mode:
				<select name="cend2" onChange="loadImage_bottom();">
				<option value="as" >Asc</option>
				<option value="ds" >Des</option>
				</select>			  
				
				&nbsp;Sfc:
				<select name="sfc2" onChange="loadImage_bottom();">
				<option value="sea" >Sea</option>
				<option value="lnd" >Land</option>
				<option value="all" >All</option>
				</select>
				
				<!--  			    
				&nbsp;Region:
				<select name="region2">
				<option value="glb" >Globe</option>
				<option value="us"  >US</option>
				<option value="na"  >North America</option>
				<option value="eu"  >Europe</option>
				<option value="af"  >North Africa</option>
				<option value="as"  >Asia</option>
				</select-->
				
				&nbsp;Year:
				<select id="yr2" name="yr2" onChange="loadImage_bottom();">
				<option value="2011">2011</option> 
				<option value="2012">2012</option> 
				<option value="2013">2013</option>
				<option value="2014">2014</option> 
				<option value="2015">2015</option> 
				<option value="2016">2016</option> 
				<option value="2017">2017</option> 
				<option value="2018">2018</option> 
				<option value="2019">2019</option> 
				<option value="2020">2020</option>  
				</select>			  
				
				Month:
				<select id="mo2" name="mo2" onChange="loadImage_bottom();">	  
				<option value="01">Jan</option>
				<option value="02">Feb</option>
				<option value="03">Mar</option>
				<option value="04">Apr</option>
				<option value="05">May</option>
				<option value="06">Jun</option>
				<option value="07">Jul</option>
				<option value="08">Aug</option>
				<option value="09">Sep</option>
				<option value="10">Oct</option>
				<option value="11">Nov</option>
				<option value="12">Dec</option>
				</select>			  
				
				Day:
				<select id="dy2" name="dy2" onChange="loadImage_bottom();">	  
				<option value="01">1 </option>   
				<option value="02">2 </option>   
				<option value="03">3 </option>   
				<option value="04">4 </option>   
				<option value="05">5 </option>   
				<option value="06">6 </option>   
				<option value="07">7 </option>   
				<option value="08">8 </option>   
				<option value="09">9 </option>   
				<option value="10">10</option>  	  
				<option value="11">11</option>  	  
				<option value="12">12</option>  	  
				<option value="13">13</option>  	  
				<option value="14">14</option>  	  
				<option value="15">15</option>  	  
				<option value="16">16</option>  	  
				<option value="17">17</option>  	  
				<option value="18">18</option>  	  
				<option value="19">19</option>  	  
				<option value="20">20</option>  	  
				<option value="21">21</option>  	  
				<option value="22">22</option>  	  
				<option value="23">23</option>  	  
				<option value="24">24</option>  	  
				<option value="25">25</option>  	  
				<option value="26">26</option>  	  
				<option value="27">27</option>  	  
				<option value="28">28</option>  	  
				<option value="29">29</option>  	 
				<option value="30">30</option>  	 
				<option value="31">31</option>  	 
				</select>			  

				&nbsp;Browse:
				<input type="button" onclick="rev();" value="<=">
				<input type="button" onclick="fwd();" value="=>">
				
				<br>
				  			    
				&nbsp;Sensor:
				<select name="sat2" onChange="changeSensor( this.value ); loadImage_bottom();" >
				<option value="n18"	      >NOAA-18</option>
				<option value="n19"	      >NOAA-19</option>
				<option value="metopA"        >METOP-A</option>
				<option value="metopB"        >METOP-B</option>
				</select>

				&nbsp;Product:
				<select name="prod2" onChange="changeProduct( this.value ); loadImage_bottom();">
				<option value="clw"    >CLW</option>
				<option value="em"     >Emissivity</option>   
				<option value="iwp"    >Ice Water Path</option>
				<option value="lwp"    >Liquid Water Path</option>
				<option value="rr"     >Rain Rate</option> 
				<option value="sice"   >Sea Ice Concentration</option>
				<option value="swe"    >Snow Water Equivalent</option>
				<option value="tskin"  >Land Surface Temperature</option>
				</select>

				<select id="layer2" name="layer2" class="optioninvisible" onChange="loadImage_bottom();">
				</select>

				</TD>
				</TR>

				</table>

				</FORM>


				<!-- END your project specific content HERE -->
				<!-- DO NOT DELETE OR ALTER BELOW THIS COMMENT! -->
			</div>
		</td>
	</tr>
<?php
// insert footer & javascript include for menuController
require('includes/footer.inc');
?>
</table>
</body>
</html>
