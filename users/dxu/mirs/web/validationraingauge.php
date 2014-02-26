<?php include("password_protect.php"); ?>

<?php
// insert header that forbids caching and carries doctype
// and html tag;
require('includes/noCacheHeader.inc');
?>

<META name="verify-v1" content="CwbLBcFt9+GqRTgaLZsENmPnSWNB5MStHHdYsB7U2nI=">
<title>STAR - MIRS Project - Comparison to Rain Gauge</title>
<?php
// style links and the icon link
// pulls in .css files for regular and print display
require('includes/styleLinks.inc');
?>

<style type="text/css">

  select.optionvisible   {visibility:visible}
  select.optioninvisible {visibility:hidden}

  td.arrowvisible 	{visibility:visible}
  td.arrowinvisible 	{visibility:hidden} 
  
</style>

<script language="javascript" type="text/javascript" src="validationraingauge.js"></script>

</head>


<body >
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
			require('includes/Sample_NavDiv.inc');
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


				<FORM NAME=form action="validationraingaugev.php" method="post">

				<table border="0" cellpadding="0" cellspacing="0" class="tableGrid" bgcolor="#eeeeee">

				<TR><TD align=center bgcolor="#eeeeee" height=18 colspan=2>
				<input  type=submit  value="Vertical Panel" style="background-color: lightblue" 
				        title="Vertical Panel Layout with larger images"> &nbsp;&nbsp;
				
				<select id="region" name="region" onChange="loadImage();" title="Select a region">
				<option value="CONUS" 	  >CONUS</option>
				<option value="SouthAme"  >South America</option>
				<option value="Australia" >Australia</option>
				</select>
				
				<B><font size=4>MIRS Comparison to Rain Gauge</font></B> (<em>Click image for large view</em>)
				</TD></TR>



				<TR>
				  <TD align=center nowrap width=325 height=275>
				    <a id="href1" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_BIA.png" target=_blank>
				    <img name="img1" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_BIA.png" 
				    align=left  width=325 height=250 alt="" title="Bias"></a>
				  </TD>

				  <TD align=center nowrap width=325 height=275>
				    <a id="href2" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_BIR.png" target=_blank>
				    <img name="img2" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_BIR.png"
				    align=right width=325 height=250 alt="" title="Bias Ratio" ></a>
				  </TD>
				</TR>

				<TR>
				  <TD id="box3" align=center nowrap width=325 height=275>
				    <a id="href3" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_COR.png" target=_blank>
				    <img name="img3" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_COR.png" 
				    align=left  width=325 height=250 alt="" title="Spatial Correlation Coefficient"></a>
				  </TD>
				  
				  <TD id="box4" align=center nowrap width=325 height=275>
				    <a id="href4" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_ETS.png" target=_blank>
				    <img name="img4" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_ETS.png"
				    align=right  width=325 height=250 alt="" title="Equitable Threat Score"></a>
				  </TD>

				</TR>

				<TR>
				  <TD id="box5" align=center nowrap width=325 height=275>
				    <a id="href5" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_FAR.png" target=_blank>
				    <img name="img5" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_FAR.png"
				    align=left  width=325 height=250 alt="" title="False Alarm Ratio"></a>
				  </TD>
				  
				  <TD id="box6" align=center nowrap width=325 height=275>
				    <a id="href6" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_HSS.png" target=_blank>
				    <img name="img6" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_HSS.png"
				    align=right  width=325 height=250 alt="" title="Heidke Skill Score"></a>
				  </TD>

				</TR>


				<TR>
				  <TD id="box7" align=center nowrap width=325 height=275>
				    <a id="href7" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_MAE.png" target=_blank>
				    <img name="img7" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_MAE.png"
				    align=left  width=325 height=250 alt="" title="Mean Absolute Error"></a>
				  </TD>
				  
				  <TD id="box8" align=center nowrap width=325 height=275>
				    <a id="href8" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_MEANRRA.png" " target=_blank>
				    <img name="img8" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_MEANRRA.png" "
				    align=right  width=325 height=250 alt="" title="Mean Rain Rate"></a>
				  </TD>

				</TR>


				<TR>
				  <TD id="box9" align=center nowrap width=325 height=275>
				    <a id="href9" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_POD.png" target=_blank>
				    <img name="img9" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_POD.png"
				    align=left  width=325 height=250 alt="" title="Probability of Detection"></a>
				  </TD>
				  
				  <TD id="boxa" align=center nowrap width=325 height=275>
				    <a id="hrefa" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_POFD.png" target=_blank>
				    <img name="imga" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_POFD.png"
				    align=right  width=325 height=250 alt="" title="False Alarm Rate"></a>
				  </TD>

				</TR>


				<TR>
				  <TD id="boxb" align=center nowrap width=325 height=275>
				    <a id="hrefb" href="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_RMSE.png" target=_blank>
				    <img name="imgb" src="images/ipwg/ipwg_time_series_MW_Gauge_CONUS_RMSE.png"
				    align=left  width=325 height=250 alt="" title="Root Mean Square Error"></a>
				  </TD>
				  
				  <TD id="boxc" align=center nowrap width=325 height=275>
				    <a id="hrefc" href="" target=_blank>
				    <img name="imgc" src=""
				    align=right  width=325 height=250 alt="" title=""></a>
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
