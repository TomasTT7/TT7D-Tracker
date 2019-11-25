<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="0" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="fp8" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="fp9" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="218" name="218bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="219" name="219bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="220" name="220bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="221" name="221bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="222" name="222bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="223" name="223bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="224" name="224bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="TT7">
<packages>
<package name="ATMEGA328P-AU">
<description>ATMEGA328P in a 32-lead TQFP package.</description>
<wire x1="-3.3782" y1="3.556" x2="-3.556" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-3.556" x2="-3.3782" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-3.556" x2="3.556" y2="-3.3782" width="0.1524" layer="21"/>
<wire x1="3.556" y1="3.556" x2="3.3782" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="3.556" x2="-3.556" y2="3.3782" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-3.3782" x2="-3.556" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="3.3782" y1="-3.556" x2="3.556" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="3.556" y1="3.3782" x2="3.556" y2="3.556" width="0.1524" layer="21"/>
<wire x1="2.5654" y1="3.556" x2="3.0226" y2="3.556" width="0" layer="51"/>
<wire x1="3.0226" y1="3.556" x2="3.0226" y2="4.6228" width="0" layer="51"/>
<wire x1="3.0226" y1="4.6228" x2="2.5654" y2="4.6228" width="0" layer="51"/>
<wire x1="2.5654" y1="4.6228" x2="2.5654" y2="3.556" width="0" layer="51"/>
<wire x1="1.778" y1="3.556" x2="2.2352" y2="3.556" width="0" layer="51"/>
<wire x1="2.2352" y1="3.556" x2="2.2352" y2="4.6228" width="0" layer="51"/>
<wire x1="2.2352" y1="4.6228" x2="1.778" y2="4.6228" width="0" layer="51"/>
<wire x1="1.778" y1="4.6228" x2="1.778" y2="3.556" width="0" layer="51"/>
<wire x1="0.9652" y1="3.556" x2="1.4224" y2="3.556" width="0" layer="51"/>
<wire x1="1.4224" y1="3.556" x2="1.4224" y2="4.6228" width="0" layer="51"/>
<wire x1="1.4224" y1="4.6228" x2="0.9652" y2="4.6228" width="0" layer="51"/>
<wire x1="0.9652" y1="4.6228" x2="0.9652" y2="3.556" width="0" layer="51"/>
<wire x1="0.1778" y1="3.556" x2="0.635" y2="3.556" width="0" layer="51"/>
<wire x1="0.635" y1="3.556" x2="0.635" y2="4.6228" width="0" layer="51"/>
<wire x1="0.635" y1="4.6228" x2="0.1778" y2="4.6228" width="0" layer="51"/>
<wire x1="0.1778" y1="4.6228" x2="0.1778" y2="3.556" width="0" layer="51"/>
<wire x1="-0.635" y1="3.556" x2="-0.1778" y2="3.556" width="0" layer="51"/>
<wire x1="-0.1778" y1="3.556" x2="-0.1778" y2="4.6228" width="0" layer="51"/>
<wire x1="-0.1778" y1="4.6228" x2="-0.635" y2="4.6228" width="0" layer="51"/>
<wire x1="-0.635" y1="4.6228" x2="-0.635" y2="3.556" width="0" layer="51"/>
<wire x1="-1.4224" y1="3.556" x2="-0.9652" y2="3.556" width="0" layer="51"/>
<wire x1="-0.9652" y1="3.556" x2="-0.9652" y2="4.6228" width="0" layer="51"/>
<wire x1="-0.9652" y1="4.6228" x2="-1.4224" y2="4.6228" width="0" layer="51"/>
<wire x1="-1.4224" y1="4.6228" x2="-1.4224" y2="3.556" width="0" layer="51"/>
<wire x1="-2.2352" y1="3.556" x2="-1.778" y2="3.556" width="0" layer="51"/>
<wire x1="-1.778" y1="3.556" x2="-1.778" y2="4.6228" width="0" layer="51"/>
<wire x1="-1.778" y1="4.6228" x2="-2.2352" y2="4.6228" width="0" layer="51"/>
<wire x1="-2.2352" y1="4.6228" x2="-2.2352" y2="3.556" width="0" layer="51"/>
<wire x1="-3.0226" y1="3.556" x2="-2.5654" y2="3.556" width="0" layer="51"/>
<wire x1="-2.5654" y1="3.556" x2="-2.5654" y2="4.6228" width="0" layer="51"/>
<wire x1="-2.5654" y1="4.6228" x2="-3.0226" y2="4.6228" width="0" layer="51"/>
<wire x1="-3.0226" y1="4.6228" x2="-3.0226" y2="3.556" width="0" layer="51"/>
<wire x1="-3.556" y1="2.5654" x2="-3.556" y2="3.0226" width="0" layer="51"/>
<wire x1="-3.556" y1="3.0226" x2="-4.6228" y2="3.0226" width="0" layer="51"/>
<wire x1="-4.6228" y1="3.0226" x2="-4.6228" y2="2.5654" width="0" layer="51"/>
<wire x1="-4.6228" y1="2.5654" x2="-3.556" y2="2.5654" width="0" layer="51"/>
<wire x1="-3.556" y1="1.778" x2="-3.556" y2="2.2352" width="0" layer="51"/>
<wire x1="-3.556" y1="2.2352" x2="-4.6228" y2="2.2352" width="0" layer="51"/>
<wire x1="-4.6228" y1="2.2352" x2="-4.6228" y2="1.778" width="0" layer="51"/>
<wire x1="-4.6228" y1="1.778" x2="-3.556" y2="1.778" width="0" layer="51"/>
<wire x1="-3.556" y1="0.9652" x2="-3.556" y2="1.4224" width="0" layer="51"/>
<wire x1="-3.556" y1="1.4224" x2="-4.6228" y2="1.4224" width="0" layer="51"/>
<wire x1="-4.6228" y1="1.4224" x2="-4.6228" y2="0.9652" width="0" layer="51"/>
<wire x1="-4.6228" y1="0.9652" x2="-3.556" y2="0.9652" width="0" layer="51"/>
<wire x1="-3.556" y1="0.1778" x2="-3.556" y2="0.635" width="0" layer="51"/>
<wire x1="-3.556" y1="0.635" x2="-4.6228" y2="0.635" width="0" layer="51"/>
<wire x1="-4.6228" y1="0.635" x2="-4.6228" y2="0.1778" width="0" layer="51"/>
<wire x1="-4.6228" y1="0.1778" x2="-3.556" y2="0.1778" width="0" layer="51"/>
<wire x1="-3.556" y1="-0.635" x2="-3.556" y2="-0.1778" width="0" layer="51"/>
<wire x1="-3.556" y1="-0.1778" x2="-4.6228" y2="-0.1778" width="0" layer="51"/>
<wire x1="-4.6228" y1="-0.1778" x2="-4.6228" y2="-0.635" width="0" layer="51"/>
<wire x1="-4.6228" y1="-0.635" x2="-3.556" y2="-0.635" width="0" layer="51"/>
<wire x1="-3.556" y1="-1.4224" x2="-3.556" y2="-0.9652" width="0" layer="51"/>
<wire x1="-3.556" y1="-0.9652" x2="-4.6228" y2="-0.9652" width="0" layer="51"/>
<wire x1="-4.6228" y1="-0.9652" x2="-4.6228" y2="-1.4224" width="0" layer="51"/>
<wire x1="-4.6228" y1="-1.4224" x2="-3.556" y2="-1.4224" width="0" layer="51"/>
<wire x1="-3.556" y1="-2.2352" x2="-3.556" y2="-1.778" width="0" layer="51"/>
<wire x1="-3.556" y1="-1.778" x2="-4.6228" y2="-1.778" width="0" layer="51"/>
<wire x1="-4.6228" y1="-1.778" x2="-4.6228" y2="-2.2352" width="0" layer="51"/>
<wire x1="-4.6228" y1="-2.2352" x2="-3.556" y2="-2.2352" width="0" layer="51"/>
<wire x1="-3.556" y1="-3.0226" x2="-3.556" y2="-2.5654" width="0" layer="51"/>
<wire x1="-3.556" y1="-2.5654" x2="-4.6228" y2="-2.5654" width="0" layer="51"/>
<wire x1="-4.6228" y1="-2.5654" x2="-4.6228" y2="-3.0226" width="0" layer="51"/>
<wire x1="-4.6228" y1="-3.0226" x2="-3.556" y2="-3.0226" width="0" layer="51"/>
<wire x1="-2.5654" y1="-3.556" x2="-3.0226" y2="-3.556" width="0" layer="51"/>
<wire x1="-3.0226" y1="-3.556" x2="-3.0226" y2="-4.6228" width="0" layer="51"/>
<wire x1="-3.0226" y1="-4.6228" x2="-2.5654" y2="-4.6228" width="0" layer="51"/>
<wire x1="-2.5654" y1="-4.6228" x2="-2.5654" y2="-3.556" width="0" layer="51"/>
<wire x1="-1.778" y1="-3.556" x2="-2.2352" y2="-3.556" width="0" layer="51"/>
<wire x1="-2.2352" y1="-3.556" x2="-2.2352" y2="-4.6228" width="0" layer="51"/>
<wire x1="-2.2352" y1="-4.6228" x2="-1.778" y2="-4.6228" width="0" layer="51"/>
<wire x1="-1.778" y1="-4.6228" x2="-1.778" y2="-3.556" width="0" layer="51"/>
<wire x1="-0.9652" y1="-3.556" x2="-1.4224" y2="-3.556" width="0" layer="51"/>
<wire x1="-1.4224" y1="-3.556" x2="-1.4224" y2="-4.6228" width="0" layer="51"/>
<wire x1="-1.4224" y1="-4.6228" x2="-0.9652" y2="-4.6228" width="0" layer="51"/>
<wire x1="-0.9652" y1="-4.6228" x2="-0.9652" y2="-3.556" width="0" layer="51"/>
<wire x1="-0.1778" y1="-3.556" x2="-0.635" y2="-3.556" width="0" layer="51"/>
<wire x1="-0.635" y1="-3.556" x2="-0.635" y2="-4.6228" width="0" layer="51"/>
<wire x1="-0.635" y1="-4.6228" x2="-0.1778" y2="-4.6228" width="0" layer="51"/>
<wire x1="-0.1778" y1="-4.6228" x2="-0.1778" y2="-3.556" width="0" layer="51"/>
<wire x1="0.635" y1="-3.556" x2="0.1778" y2="-3.556" width="0" layer="51"/>
<wire x1="0.1778" y1="-3.556" x2="0.1778" y2="-4.6228" width="0" layer="51"/>
<wire x1="0.1778" y1="-4.6228" x2="0.635" y2="-4.6228" width="0" layer="51"/>
<wire x1="0.635" y1="-4.6228" x2="0.635" y2="-3.556" width="0" layer="51"/>
<wire x1="1.4224" y1="-3.556" x2="0.9652" y2="-3.556" width="0" layer="51"/>
<wire x1="0.9652" y1="-3.556" x2="0.9652" y2="-4.6228" width="0" layer="51"/>
<wire x1="0.9652" y1="-4.6228" x2="1.4224" y2="-4.6228" width="0" layer="51"/>
<wire x1="1.4224" y1="-4.6228" x2="1.4224" y2="-3.556" width="0" layer="51"/>
<wire x1="2.2352" y1="-3.556" x2="1.778" y2="-3.556" width="0" layer="51"/>
<wire x1="1.778" y1="-3.556" x2="1.778" y2="-4.6228" width="0" layer="51"/>
<wire x1="1.778" y1="-4.6228" x2="2.2352" y2="-4.6228" width="0" layer="51"/>
<wire x1="2.2352" y1="-4.6228" x2="2.2352" y2="-3.556" width="0" layer="51"/>
<wire x1="3.0226" y1="-3.556" x2="2.5654" y2="-3.556" width="0" layer="51"/>
<wire x1="2.5654" y1="-3.556" x2="2.5654" y2="-4.6228" width="0" layer="51"/>
<wire x1="2.5654" y1="-4.6228" x2="3.0226" y2="-4.6228" width="0" layer="51"/>
<wire x1="3.0226" y1="-4.6228" x2="3.0226" y2="-3.556" width="0" layer="51"/>
<wire x1="3.556" y1="-2.5654" x2="3.556" y2="-3.0226" width="0" layer="51"/>
<wire x1="3.556" y1="-3.0226" x2="4.6228" y2="-3.0226" width="0" layer="51"/>
<wire x1="4.6228" y1="-3.0226" x2="4.6228" y2="-2.5654" width="0" layer="51"/>
<wire x1="4.6228" y1="-2.5654" x2="3.556" y2="-2.5654" width="0" layer="51"/>
<wire x1="3.556" y1="-1.778" x2="3.556" y2="-2.2352" width="0" layer="51"/>
<wire x1="3.556" y1="-2.2352" x2="4.6228" y2="-2.2352" width="0" layer="51"/>
<wire x1="4.6228" y1="-2.2352" x2="4.6228" y2="-1.778" width="0" layer="51"/>
<wire x1="4.6228" y1="-1.778" x2="3.556" y2="-1.778" width="0" layer="51"/>
<wire x1="3.556" y1="-0.9652" x2="3.556" y2="-1.4224" width="0" layer="51"/>
<wire x1="3.556" y1="-1.4224" x2="4.6228" y2="-1.4224" width="0" layer="51"/>
<wire x1="4.6228" y1="-1.4224" x2="4.6228" y2="-0.9652" width="0" layer="51"/>
<wire x1="4.6228" y1="-0.9652" x2="3.556" y2="-0.9652" width="0" layer="51"/>
<wire x1="3.556" y1="-0.1778" x2="3.556" y2="-0.635" width="0" layer="51"/>
<wire x1="3.556" y1="-0.635" x2="4.6228" y2="-0.635" width="0" layer="51"/>
<wire x1="4.6228" y1="-0.635" x2="4.6228" y2="-0.1778" width="0" layer="51"/>
<wire x1="4.6228" y1="-0.1778" x2="3.556" y2="-0.1778" width="0" layer="51"/>
<wire x1="3.556" y1="0.635" x2="3.556" y2="0.1778" width="0" layer="51"/>
<wire x1="3.556" y1="0.1778" x2="4.6228" y2="0.1778" width="0" layer="51"/>
<wire x1="4.6228" y1="0.1778" x2="4.6228" y2="0.635" width="0" layer="51"/>
<wire x1="4.6228" y1="0.635" x2="3.556" y2="0.635" width="0" layer="51"/>
<wire x1="3.556" y1="1.4224" x2="3.556" y2="0.9652" width="0" layer="51"/>
<wire x1="3.556" y1="0.9652" x2="4.6228" y2="0.9652" width="0" layer="51"/>
<wire x1="4.6228" y1="0.9652" x2="4.6228" y2="1.4224" width="0" layer="51"/>
<wire x1="4.6228" y1="1.4224" x2="3.556" y2="1.4224" width="0" layer="51"/>
<wire x1="3.556" y1="2.2352" x2="3.556" y2="1.778" width="0" layer="51"/>
<wire x1="3.556" y1="1.778" x2="4.6228" y2="1.778" width="0" layer="51"/>
<wire x1="4.6228" y1="1.778" x2="4.6228" y2="2.2352" width="0" layer="51"/>
<wire x1="4.6228" y1="2.2352" x2="3.556" y2="2.2352" width="0" layer="51"/>
<wire x1="3.556" y1="3.0226" x2="3.556" y2="2.5654" width="0" layer="51"/>
<wire x1="3.556" y1="2.5654" x2="4.6228" y2="2.5654" width="0" layer="51"/>
<wire x1="4.6228" y1="2.5654" x2="4.6228" y2="3.0226" width="0" layer="51"/>
<wire x1="4.6228" y1="3.0226" x2="3.556" y2="3.0226" width="0" layer="51"/>
<wire x1="-3.556" y1="2.286" x2="-2.286" y2="3.556" width="0" layer="51"/>
<wire x1="-3.556" y1="-3.556" x2="3.556" y2="-3.556" width="0" layer="51"/>
<wire x1="3.556" y1="-3.556" x2="3.556" y2="3.556" width="0" layer="51"/>
<wire x1="3.556" y1="3.556" x2="-3.556" y2="3.556" width="0" layer="51"/>
<wire x1="-3.556" y1="3.556" x2="-3.556" y2="-3.556" width="0" layer="51"/>
<smd name="PD3" x="-4.2" y="2.8" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="PD4" x="-4.2" y="2" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="GND1" x="-4.2" y="1.2" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="VCC1" x="-4.2" y="0.4" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="GND2" x="-4.2" y="-0.4" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="VCC2" x="-4.2" y="-1.2" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="PB6" x="-4.2" y="-2" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="PB7" x="-4.2" y="-2.8" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="PD5" x="-2.8" y="-4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PD6" x="-2" y="-4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PD7" x="-1.2" y="-4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PB0" x="-0.4" y="-4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PB1" x="0.4" y="-4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PB2" x="1.2" y="-4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PB3" x="2" y="-4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PB4" x="2.8" y="-4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PB5" x="4.2" y="-2.8" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="AVCC" x="4.2" y="-2" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="ADC6" x="4.2" y="-1.2" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="AREF" x="4.2" y="-0.4" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="GND3" x="4.2" y="0.4" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="ADC7" x="4.2" y="1.2" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="PC0" x="4.2" y="2" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="PC1" x="4.2" y="2.8" dx="0.55" dy="1.5" layer="1" rot="R270"/>
<smd name="PC2" x="2.8" y="4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PC3" x="2" y="4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PC4" x="1.2" y="4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PC5" x="0.4" y="4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PC6" x="-0.4" y="4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PD0" x="-1.2" y="4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PD1" x="-2" y="4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<smd name="PD2" x="-2.8" y="4.2" dx="0.55" dy="1.5" layer="1" rot="R180"/>
<circle x="-2.5" y="2.5" radius="0" width="0.635" layer="21"/>
</package>
<package name="UBLOX_MAX-7C">
<description>U-Blox MAX-M8.</description>
<circle x="-2.9" y="4.25" radius="0.4" width="0" layer="21"/>
<wire x1="-4.85" y1="-5.05" x2="4.85" y2="-5.05" width="0.15" layer="21"/>
<wire x1="-4.85" y1="5.05" x2="4.85" y2="5.05" width="0.15" layer="21"/>
<smd name="GND2" x="4.85" y="-4.4" dx="1.8" dy="0.8" layer="1"/>
<smd name="RF_IN" x="4.85" y="-3.3" dx="1.8" dy="0.8" layer="1"/>
<smd name="GND3" x="4.85" y="-2.2" dx="1.8" dy="0.8" layer="1"/>
<smd name="LNA_EN" x="4.85" y="-1.1" dx="1.8" dy="0.8" layer="1"/>
<smd name="VCC_RF" x="4.85" y="0" dx="1.8" dy="0.8" layer="1"/>
<smd name="V_ANT" x="4.85" y="1.1" dx="1.8" dy="0.8" layer="1"/>
<smd name="SDA" x="4.85" y="2.2" dx="1.8" dy="0.8" layer="1"/>
<smd name="SCL" x="4.85" y="3.3" dx="1.8" dy="0.8" layer="1"/>
<smd name="SAFEBOOT_N" x="4.85" y="4.4" dx="1.8" dy="0.8" layer="1"/>
<smd name="GND1" x="-4.85" y="4.4" dx="1.8" dy="0.8" layer="1"/>
<smd name="TXD" x="-4.85" y="3.3" dx="1.8" dy="0.8" layer="1"/>
<smd name="RXD" x="-4.85" y="2.2" dx="1.8" dy="0.8" layer="1"/>
<smd name="TIMEPULSE" x="-4.85" y="1.1" dx="1.8" dy="0.8" layer="1"/>
<smd name="EXTINT" x="-4.85" y="0" dx="1.8" dy="0.8" layer="1"/>
<smd name="V_BCKP" x="-4.85" y="-1.1" dx="1.8" dy="0.8" layer="1"/>
<smd name="VCC_IO" x="-4.85" y="-2.2" dx="1.8" dy="0.8" layer="1"/>
<smd name="VCC" x="-4.85" y="-3.3" dx="1.8" dy="0.8" layer="1"/>
<smd name="RESET_N" x="-4.85" y="-4.4" dx="1.8" dy="0.8" layer="1"/>
<wire x1="-4.85" y1="-5.05" x2="-4.85" y2="5.05" width="0.1" layer="51"/>
<wire x1="-4.85" y1="5.05" x2="4.85" y2="5.05" width="0.1" layer="51"/>
<wire x1="4.85" y1="5.05" x2="4.85" y2="-5.05" width="0.1" layer="51"/>
<wire x1="4.85" y1="-5.05" x2="-4.85" y2="-5.05" width="0.1" layer="51"/>
</package>
<package name="SI406X">
<description>SI406x transmitter footprint. Stencil: 0.1mm thickness, 71.6% center pad coverage, 100% pin coverage. Mask: 70μm around pins, 100μm around center pad.</description>
<smd name="GNDP" x="0" y="0" dx="2.6" dy="2.6" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="NSEL" x="1.975" y="1" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="SDO" x="1.975" y="0" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="NIRQ" x="1.975" y="-1" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="SCLK" x="1.975" y="-0.5" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="SDI" x="1.975" y="0.5" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="SDN" x="-1.975" y="1" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="NC2" x="-1.975" y="0" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="NC3" x="-1.975" y="-1" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="TX" x="-1.975" y="-0.5" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="NC1" x="-1.975" y="0.5" dx="0.7" dy="0.25" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="GPIO3" x="-1" y="1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="GPIO2" x="-0.5" y="1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="GND" x="0" y="1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="XIN" x="0.5" y="1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="XOUT" x="1" y="1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="VDD1" x="-1" y="-1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="TXRAMP" x="-0.5" y="-1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="VDD2" x="0" y="-1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="GPIO0" x="0.5" y="-1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<smd name="GPIO1" x="1" y="-1.975" dx="0.25" dy="0.7" layer="1" stop="no" thermals="no" cream="no"/>
<circle x="-1.7" y="1.7" radius="0.15" width="0" layer="21"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.1" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.1" layer="51"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.1" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.1" layer="51"/>
<rectangle x1="-1.4" y1="-1.4" x2="1.4" y2="1.4" layer="29"/>
<rectangle x1="-2.395" y1="-0.195" x2="-1.555" y2="0.195" layer="29"/>
<rectangle x1="-2.395" y1="-1.195" x2="-1.555" y2="-0.805" layer="29"/>
<rectangle x1="-2.395" y1="0.805" x2="-1.555" y2="1.195" layer="29"/>
<rectangle x1="-2.395" y1="-0.695" x2="-1.555" y2="-0.305" layer="29"/>
<rectangle x1="-2.395" y1="0.305" x2="-1.555" y2="0.695" layer="29"/>
<rectangle x1="1.555" y1="-1.195" x2="2.395" y2="-0.805" layer="29"/>
<rectangle x1="1.555" y1="-0.695" x2="2.395" y2="-0.305" layer="29"/>
<rectangle x1="1.555" y1="0.305" x2="2.395" y2="0.695" layer="29"/>
<rectangle x1="1.555" y1="-0.195" x2="2.395" y2="0.195" layer="29"/>
<rectangle x1="1.555" y1="0.805" x2="2.395" y2="1.195" layer="29"/>
<rectangle x1="0.58" y1="-2.17" x2="1.42" y2="-1.78" layer="29" rot="R90"/>
<rectangle x1="0.08" y1="-2.17" x2="0.92" y2="-1.78" layer="29" rot="R90"/>
<rectangle x1="-0.92" y1="-2.17" x2="-0.08" y2="-1.78" layer="29" rot="R90"/>
<rectangle x1="-0.42" y1="-2.17" x2="0.42" y2="-1.78" layer="29" rot="R90"/>
<rectangle x1="-1.42" y1="-2.17" x2="-0.58" y2="-1.78" layer="29" rot="R90"/>
<rectangle x1="0.58" y1="1.78" x2="1.42" y2="2.17" layer="29" rot="R90"/>
<rectangle x1="0.08" y1="1.78" x2="0.92" y2="2.17" layer="29" rot="R90"/>
<rectangle x1="-0.92" y1="1.78" x2="-0.08" y2="2.17" layer="29" rot="R90"/>
<rectangle x1="-0.42" y1="1.78" x2="0.42" y2="2.17" layer="29" rot="R90"/>
<rectangle x1="-1.42" y1="1.78" x2="-0.58" y2="2.17" layer="29" rot="R90"/>
<rectangle x1="-1.2" y1="0.1" x2="-0.1" y2="1.2" layer="31"/>
<rectangle x1="0.1" y1="0.1" x2="1.2" y2="1.2" layer="31"/>
<rectangle x1="-1.2" y1="-1.2" x2="-0.1" y2="-0.1" layer="31"/>
<rectangle x1="0.1" y1="-1.2" x2="1.2" y2="-0.1" layer="31"/>
<rectangle x1="-2.325" y1="-0.125" x2="-1.625" y2="0.125" layer="31"/>
<rectangle x1="-2.325" y1="0.875" x2="-1.625" y2="1.125" layer="31"/>
<rectangle x1="-2.325" y1="-1.125" x2="-1.625" y2="-0.875" layer="31"/>
<rectangle x1="-2.325" y1="0.375" x2="-1.625" y2="0.625" layer="31"/>
<rectangle x1="-2.325" y1="-0.625" x2="-1.625" y2="-0.375" layer="31"/>
<rectangle x1="1.625" y1="-0.625" x2="2.325" y2="-0.375" layer="31"/>
<rectangle x1="1.625" y1="-1.125" x2="2.325" y2="-0.875" layer="31"/>
<rectangle x1="1.625" y1="-0.125" x2="2.325" y2="0.125" layer="31"/>
<rectangle x1="1.625" y1="0.875" x2="2.325" y2="1.125" layer="31"/>
<rectangle x1="1.625" y1="0.375" x2="2.325" y2="0.625" layer="31"/>
<rectangle x1="0.65" y1="1.85" x2="1.35" y2="2.1" layer="31" rot="R90"/>
<rectangle x1="0.15" y1="1.85" x2="0.85" y2="2.1" layer="31" rot="R90"/>
<rectangle x1="-0.85" y1="1.85" x2="-0.15" y2="2.1" layer="31" rot="R90"/>
<rectangle x1="-0.35" y1="1.85" x2="0.35" y2="2.1" layer="31" rot="R90"/>
<rectangle x1="-1.35" y1="1.85" x2="-0.65" y2="2.1" layer="31" rot="R90"/>
<rectangle x1="-1.35" y1="-2.1" x2="-0.65" y2="-1.85" layer="31" rot="R90"/>
<rectangle x1="-0.35" y1="-2.1" x2="0.35" y2="-1.85" layer="31" rot="R90"/>
<rectangle x1="0.65" y1="-2.1" x2="1.35" y2="-1.85" layer="31" rot="R90"/>
<rectangle x1="-0.85" y1="-2.1" x2="-0.15" y2="-1.85" layer="31" rot="R90"/>
<rectangle x1="0.15" y1="-2.1" x2="0.85" y2="-1.85" layer="31" rot="R90"/>
</package>
<package name="IT3205CE_TCXO_6P">
<description>IT3205CE 16.369MHz TCXO with 6 pads.</description>
<wire x1="-1.6" y1="-1.25" x2="-1.6" y2="1.25" width="0.1" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="1.6" y2="1.25" width="0.1" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1.6" y2="-1.25" width="0.1" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="-1.6" y2="-1.25" width="0.1" layer="51"/>
<smd name="GND1" x="-1.325" y="-0.85" dx="1" dy="0.75" layer="1" rot="R90"/>
<smd name="GND2" x="1.325" y="-0.85" dx="1" dy="0.75" layer="1" rot="R90"/>
<smd name="NC1" x="0" y="-0.85" dx="1" dy="0.75" layer="1" rot="R90"/>
<smd name="NC2" x="0" y="0.85" dx="1" dy="0.75" layer="1" rot="R90"/>
<smd name="OUT" x="1.325" y="0.85" dx="1" dy="0.75" layer="1" rot="R90"/>
<smd name="VDD" x="-1.325" y="0.85" dx="1" dy="0.75" layer="1" rot="R90"/>
<wire x1="-1.25" y1="-0.05" x2="-0.65" y2="-0.05" width="0.15" layer="21"/>
<wire x1="-0.65" y1="-0.05" x2="-0.65" y2="-0.6" width="0.15" layer="21"/>
<wire x1="-1.65" y1="-0.1" x2="-1.65" y2="0.1" width="0.15" layer="21"/>
<wire x1="1.65" y1="0.1" x2="1.65" y2="-0.1" width="0.15" layer="21"/>
<wire x1="-0.7" y1="1.25" x2="-0.6" y2="1.25" width="0.15" layer="21"/>
<wire x1="-0.7" y1="-1.25" x2="-0.6" y2="-1.25" width="0.15" layer="21"/>
<wire x1="0.6" y1="1.25" x2="0.7" y2="1.25" width="0.15" layer="21"/>
<wire x1="0.6" y1="-1.25" x2="0.7" y2="-1.25" width="0.15" layer="21"/>
</package>
<package name="MCP1640">
<description>MCP1640 in SOT23 package.</description>
<circle x="-0.95" y="-0.4" radius="0" width="0.35" layer="21"/>
<wire x1="1.35" y1="0.6" x2="1.35" y2="-0.6" width="0.15" layer="21"/>
<wire x1="1.45" y1="-0.775" x2="-1.45" y2="-0.775" width="0.1" layer="51"/>
<wire x1="-1.35" y1="-0.6" x2="-1.35" y2="0.6" width="0.15" layer="21"/>
<wire x1="-1.45" y1="0.775" x2="1.45" y2="0.775" width="0.1" layer="51"/>
<rectangle x1="-1.125" y1="-1.35" x2="-0.775" y2="-0.775" layer="51"/>
<rectangle x1="-0.175" y1="-1.35" x2="0.175" y2="-0.775" layer="51"/>
<rectangle x1="0.775" y1="-1.35" x2="1.125" y2="-0.775" layer="51"/>
<rectangle x1="0.775" y1="0.775" x2="1.125" y2="1.35" layer="51"/>
<rectangle x1="-1.125" y1="0.775" x2="-0.775" y2="1.35" layer="51"/>
<rectangle x1="-0.175" y1="0.775" x2="0.175" y2="1.35" layer="51"/>
<smd name="SW" x="-0.95" y="-1.4" dx="0.6" dy="1.1" layer="1"/>
<smd name="GND" x="0" y="-1.4" dx="0.6" dy="1.1" layer="1"/>
<smd name="EN" x="0.95" y="-1.4" dx="0.6" dy="1.1" layer="1"/>
<smd name="VFB" x="0.95" y="1.4" dx="0.6" dy="1.1" layer="1"/>
<smd name="VOUT" x="0" y="1.4" dx="0.6" dy="1.1" layer="1"/>
<smd name="VIN" x="-0.95" y="1.4" dx="0.6" dy="1.1" layer="1"/>
</package>
<package name="JTI_1575AT43A0040">
<description>JTI_1575AT43A0040 GNSS antenna footprint.</description>
<smd name="FEED" x="-3.5" y="0" dx="1" dy="1.8" layer="1"/>
<smd name="NC" x="3.5" y="0" dx="1" dy="1.8" layer="1"/>
<wire x1="-2" y1="0" x2="-1" y2="0" width="0.4" layer="21"/>
<wire x1="-3.5" y1="1" x2="3.5" y2="1" width="0.1" layer="51"/>
<wire x1="3.5" y1="1" x2="3.5" y2="-1" width="0.1" layer="51"/>
<wire x1="3.5" y1="-1" x2="-3.5" y2="-1" width="0.1" layer="51"/>
<wire x1="-3.5" y1="-1" x2="-3.5" y2="1" width="0.1" layer="51"/>
<wire x1="-5.5" y1="-1" x2="-5.5" y2="-3" width="0.1" layer="51"/>
<wire x1="-5.5" y1="-1" x2="-6" y2="-1" width="0.1" layer="51"/>
<wire x1="-5.5" y1="3" x2="-5.5" y2="1" width="0.1" layer="51"/>
<wire x1="-6" y1="1" x2="-5.5" y2="1" width="0.1" layer="51"/>
</package>
<package name="CAP0402">
<description>CAPACITOR 0402 - 1x0.5x0.35mm. Pad size 0.5x0.6mm. Solder Mask: 0.051mm around pads. Stencil: 66% pad coverage.</description>
<smd name="P$1" x="-0.5" y="0" dx="0.6" dy="0.5" layer="1" rot="R90" stop="no" cream="no"/>
<smd name="P$2" x="0.5" y="0" dx="0.6" dy="0.5" layer="1" rot="R90" stop="no" cream="no"/>
<wire x1="-0.05" y1="0.25" x2="0.05" y2="0.25" width="0.127" layer="21"/>
<wire x1="-0.05" y1="-0.25" x2="0.05" y2="-0.25" width="0.127" layer="21"/>
<rectangle x1="-0.7" y1="-0.25" x2="-0.3" y2="0.25" layer="31"/>
<rectangle x1="0.3" y1="-0.25" x2="0.7" y2="0.25" layer="31"/>
<rectangle x1="-0.801" y1="-0.351" x2="-0.199" y2="0.351" layer="29"/>
<rectangle x1="0.199" y1="-0.351" x2="0.801" y2="0.351" layer="29"/>
</package>
<package name="IND0402">
<description>INDUCTOR 0402 - 1x0.5x0.35mm. Pad size 0.5x0.6mm. Solder Mask: 0.051mm around pads. Stencil: 66% pad coverage.</description>
<smd name="P$1" x="-0.5" y="0" dx="0.6" dy="0.5" layer="1" rot="R90" stop="no" cream="no"/>
<smd name="P$2" x="0.5" y="0" dx="0.6" dy="0.5" layer="1" rot="R90" stop="no" cream="no"/>
<wire x1="-0.025" y1="0" x2="0.025" y2="0" width="0.127" layer="21"/>
<rectangle x1="-0.7" y1="-0.25" x2="-0.3" y2="0.25" layer="31"/>
<rectangle x1="0.3" y1="-0.25" x2="0.7" y2="0.25" layer="31"/>
<rectangle x1="-0.801" y1="-0.351" x2="-0.199" y2="0.351" layer="29"/>
<rectangle x1="0.199" y1="-0.351" x2="0.801" y2="0.351" layer="29"/>
</package>
<package name="LED0603">
<description>LED 0603</description>
<smd name="ANODE" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1" rot="R90"/>
<smd name="CATHODE" x="0.75" y="0" dx="0.8" dy="0.8" layer="1" rot="R90"/>
<wire x1="-0.15" y1="-0.33" x2="-0.15" y2="0.33" width="0.15" layer="21"/>
<wire x1="0.15" y1="0" x2="-0.15" y2="0.33" width="0.15" layer="21"/>
<wire x1="0.15" y1="0" x2="-0.15" y2="-0.33" width="0.15" layer="21"/>
</package>
<package name="RES0402">
<description>RESISTOR 0402 - 1x0.5x0.35mm. Pad size 0.5x0.6mm. Solder Mask: 0.051mm around pads. Stencil: 66% pad coverage.</description>
<smd name="P$1" x="-0.5" y="0" dx="0.6" dy="0.5" layer="1" rot="R90" stop="no" cream="no"/>
<smd name="P$2" x="0.5" y="0" dx="0.6" dy="0.5" layer="1" rot="R90" stop="no" cream="no"/>
<wire x1="0" y1="-0.2" x2="0" y2="0.2" width="0.127" layer="21"/>
<rectangle x1="-0.7" y1="-0.25" x2="-0.3" y2="0.25" layer="31"/>
<rectangle x1="0.3" y1="-0.25" x2="0.7" y2="0.25" layer="31"/>
<rectangle x1="-0.801" y1="-0.351" x2="-0.199" y2="0.351" layer="29"/>
<rectangle x1="0.199" y1="-0.351" x2="0.801" y2="0.351" layer="29"/>
</package>
<package name="LFXTAL055663">
<description>LFXTAL055663 XTAL footprint in a 5.0x3.2mm package.</description>
<smd name="CRYSTAL2" x="1.9" y="1.15" dx="1.6" dy="1.4" layer="1"/>
<smd name="GND1" x="1.9" y="-1.15" dx="1.6" dy="1.4" layer="1"/>
<smd name="CRYSTAL1" x="-1.9" y="-1.15" dx="1.6" dy="1.4" layer="1"/>
<smd name="GND2" x="-1.9" y="1.15" dx="1.6" dy="1.4" layer="1"/>
<wire x1="-2.5" y1="1.6" x2="2.5" y2="1.6" width="0.1" layer="51"/>
<wire x1="2.5" y1="1.6" x2="2.5" y2="-1.6" width="0.1" layer="51"/>
<wire x1="2.5" y1="-1.6" x2="-2.5" y2="-1.6" width="0.1" layer="51"/>
<wire x1="-2.5" y1="-1.6" x2="-2.5" y2="1.6" width="0.1" layer="51"/>
<wire x1="-1.45" y1="-0.15" x2="-0.8" y2="-0.15" width="0.15" layer="21"/>
<wire x1="-0.8" y1="-0.15" x2="-0.8" y2="-0.8" width="0.15" layer="21"/>
<wire x1="-0.8" y1="1.7" x2="0.8" y2="1.7" width="0.15" layer="21"/>
<wire x1="-0.8" y1="-1.7" x2="0.8" y2="-1.7" width="0.15" layer="21"/>
<wire x1="-2.6" y1="-0.15" x2="-2.6" y2="0.15" width="0.15" layer="21"/>
<wire x1="2.6" y1="-0.15" x2="2.6" y2="0.15" width="0.15" layer="21"/>
</package>
<package name="DJNR3015">
<description>DJNR3015 inductor footprint.</description>
<smd name="P1" x="-1.1" y="0" dx="2.7" dy="1" layer="1" rot="R90"/>
<smd name="P2" x="1.1" y="0" dx="2.7" dy="1" layer="1" rot="R90"/>
<wire x1="-1.5" y1="1.5" x2="1.5" y2="1.5" width="0.1" layer="51"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="-1.5" width="0.1" layer="51"/>
<wire x1="1.5" y1="-1.5" x2="-1.5" y2="-1.5" width="0.1" layer="51"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="1.5" width="0.1" layer="51"/>
<wire x1="-0.3" y1="1.4" x2="0.3" y2="1.4" width="0.15" layer="21"/>
<wire x1="0.3" y1="-1.4" x2="-0.3" y2="-1.4" width="0.15" layer="21"/>
</package>
<package name="DIODE0402">
<description>DIODE 0402 - 1x0.5x0.35mm. Pad size 0.5x0.6mm. Solder Mask: 0.051mm around pads. Stencil: 66% pad coverage.</description>
<smd name="ANODE" x="-0.5" y="0" dx="0.6" dy="0.5" layer="1" rot="R90" stop="no" cream="no"/>
<smd name="CATHODE" x="0.5" y="0" dx="0.6" dy="0.5" layer="1" rot="R90" stop="no" cream="no"/>
<wire x1="-0.1" y1="0.15" x2="0.1" y2="0" width="0.127" layer="21"/>
<wire x1="-0.1" y1="-0.15" x2="-0.1" y2="0.15" width="0.127" layer="21"/>
<rectangle x1="-0.7" y1="-0.25" x2="-0.3" y2="0.25" layer="31"/>
<rectangle x1="0.3" y1="-0.25" x2="0.7" y2="0.25" layer="31"/>
<rectangle x1="-0.801" y1="-0.351" x2="-0.199" y2="0.351" layer="29"/>
<rectangle x1="0.199" y1="-0.351" x2="0.801" y2="0.351" layer="29"/>
<wire x1="-0.1" y1="-0.15" x2="0.1" y2="0" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ATMEGA328P-AU">
<description>ATMEGA328P in a TQFP32 package.</description>
<wire x1="-17.78" y1="17.78" x2="-17.78" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="-17.78" y1="-15.24" x2="15.24" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="15.24" y2="17.78" width="0.4064" layer="94"/>
<wire x1="15.24" y1="17.78" x2="-17.78" y2="17.78" width="0.4064" layer="94"/>
<pin name="ADC6" x="17.78" y="-2.54" visible="pin" length="short" direction="in" rot="R180"/>
<pin name="ADC7" x="17.78" y="5.08" visible="pin" length="short" direction="in" rot="R180"/>
<pin name="AREF" x="17.78" y="0" visible="pin" length="short" direction="in" rot="R180"/>
<pin name="AVCC" x="17.78" y="-5.08" visible="pin" length="short" direction="pwr" rot="R180"/>
<pin name="GND1" x="-20.32" y="5.08" visible="pin" length="short" direction="pas"/>
<pin name="GND2" x="-20.32" y="0" visible="pin" length="short" direction="pas"/>
<pin name="GND3" x="17.78" y="2.54" visible="pin" length="short" direction="pas" rot="R180"/>
<pin name="PB0" x="-2.54" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="PB1" x="0" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="PB2" x="2.54" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="PB3" x="5.08" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="PB4" x="7.62" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="PB5" x="17.78" y="-7.62" visible="pin" length="short" rot="R180"/>
<pin name="PB6" x="-20.32" y="-5.08" visible="pin" length="short"/>
<pin name="PB7" x="-20.32" y="-7.62" visible="pin" length="short"/>
<pin name="PC0" x="17.78" y="7.62" visible="pin" length="short" rot="R180"/>
<pin name="PC1" x="17.78" y="10.16" visible="pin" length="short" rot="R180"/>
<pin name="PC2" x="7.62" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="PC3" x="5.08" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="PC4" x="2.54" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="PC5" x="0" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="PC6" x="-2.54" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="PD0" x="-5.08" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="PD1" x="-7.62" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="PD2" x="-10.16" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="PD3" x="-20.32" y="10.16" visible="pin" length="short"/>
<pin name="PD4" x="-20.32" y="7.62" visible="pin" length="short"/>
<pin name="PD5" x="-10.16" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="PD6" x="-7.62" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="PD7" x="-5.08" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="VCC1" x="-20.32" y="2.54" visible="pin" length="short" direction="pwr"/>
<pin name="VCC2" x="-20.32" y="-2.54" visible="pin" length="short" direction="pwr"/>
<text x="-8.255" y="2.54" size="1.778" layer="95" ratio="10" rot="SR0">ATMEGA328P</text>
</symbol>
<symbol name="UBLOX_MAX-7C">
<description>U-Blox MAX-M8.</description>
<wire x1="-17.78" y1="17.78" x2="-17.78" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-17.78" x2="17.78" y2="-17.78" width="0.254" layer="94"/>
<wire x1="17.78" y1="-17.78" x2="17.78" y2="17.78" width="0.254" layer="94"/>
<wire x1="17.78" y1="17.78" x2="-17.78" y2="17.78" width="0.254" layer="94"/>
<pin name="GND2" x="20.32" y="-10.16" visible="pin" length="short" rot="R180"/>
<pin name="RF_IN" x="20.32" y="-7.62" visible="pin" length="short" rot="R180"/>
<pin name="GND3" x="20.32" y="-5.08" visible="pin" length="short" rot="R180"/>
<pin name="LNA_EN" x="20.32" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="VCC_RF" x="20.32" y="0" visible="pin" length="short" rot="R180"/>
<pin name="V_ANT" x="20.32" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="SDA" x="20.32" y="5.08" visible="pin" length="short" rot="R180"/>
<pin name="SCL" x="20.32" y="7.62" visible="pin" length="short" rot="R180"/>
<pin name="SAFEBOOT_N" x="20.32" y="10.16" visible="pin" length="short" rot="R180"/>
<pin name="GND1" x="-20.32" y="10.16" visible="pin" length="short"/>
<pin name="TXD" x="-20.32" y="7.62" visible="pin" length="short"/>
<pin name="RXD" x="-20.32" y="5.08" visible="pin" length="short"/>
<pin name="TIMEPULSE" x="-20.32" y="2.54" visible="pin" length="short"/>
<pin name="EXTINT" x="-20.32" y="0" visible="pin" length="short"/>
<pin name="V_BCKP" x="-20.32" y="-2.54" visible="pin" length="short"/>
<pin name="VCC_IO" x="-20.32" y="-5.08" visible="pin" length="short"/>
<pin name="VCC" x="-20.32" y="-7.62" visible="pin" length="short"/>
<pin name="RESET_N" x="-20.32" y="-10.16" visible="pin" length="short"/>
<text x="-8.89" y="13.97" size="1.905" layer="95">u-blox MAX-M8</text>
</symbol>
<symbol name="SI406X">
<description>SI406x transmitter footprint.</description>
<pin name="NC2" x="-17.78" y="0" visible="pin" length="short"/>
<pin name="NC1" x="-17.78" y="2.54" visible="pin" length="short"/>
<pin name="SDN" x="-17.78" y="5.08" visible="pin" length="short"/>
<pin name="TX" x="-17.78" y="-2.54" visible="pin" length="short"/>
<pin name="NC3" x="-17.78" y="-5.08" visible="pin" length="short"/>
<pin name="SDO" x="17.78" y="0" visible="pin" length="short" rot="R180"/>
<pin name="SDI" x="17.78" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="NSEL" x="17.78" y="5.08" visible="pin" length="short" rot="R180"/>
<pin name="SCLK" x="17.78" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="NIRQ" x="17.78" y="-5.08" visible="pin" length="short" rot="R180"/>
<pin name="GPIO3" x="-5.08" y="17.78" visible="pin" length="short" rot="R270"/>
<pin name="GPIO2" x="-2.54" y="17.78" visible="pin" length="short" rot="R270"/>
<pin name="GND" x="0" y="17.78" visible="pin" length="short" rot="R270"/>
<pin name="XIN" x="2.54" y="17.78" visible="pin" length="short" rot="R270"/>
<pin name="XOUT" x="5.08" y="17.78" visible="pin" length="short" rot="R270"/>
<pin name="VDD1" x="-5.08" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="TXRAMP" x="-2.54" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="VDD2" x="0" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="GPIO0" x="2.54" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="GPIO1" x="5.08" y="-17.78" visible="pin" length="short" rot="R90"/>
<pin name="GNDP" x="-17.78" y="10.16" visible="pin" length="short"/>
<wire x1="-15.24" y1="15.24" x2="15.24" y2="15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="15.24" x2="15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="-15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-15.24" x2="-15.24" y2="15.24" width="0.254" layer="94"/>
<text x="-3.175" y="0" size="1.524" layer="95">Si406x</text>
</symbol>
<symbol name="IT3205CE_TCXO_6P">
<description>IT3205CE 16.369MHz TCXO with 6 pads.</description>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="0" width="0.254" layer="94"/>
<pin name="GND1" x="-10.16" y="5.08" visible="pin" length="short"/>
<pin name="GND2" x="-10.16" y="-5.08" visible="pin" length="short"/>
<pin name="NC1" x="-10.16" y="0" visible="pin" length="short"/>
<pin name="NC2" x="10.16" y="0" visible="pin" length="short" rot="R180"/>
<pin name="OUT" x="10.16" y="-5.08" visible="pin" length="short" rot="R180"/>
<pin name="VDD" x="10.16" y="5.08" visible="pin" length="short" rot="R180"/>
</symbol>
<symbol name="MCP1640">
<description>MCP1640 in SOT23 package.</description>
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<pin name="EN" x="-10.16" y="-2.54" visible="pin" length="short" direction="in"/>
<pin name="VFB" x="10.16" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="GND" x="-10.16" y="0" visible="pin" length="short"/>
<pin name="SW" x="-10.16" y="2.54" visible="pin" length="short"/>
<pin name="VIN" x="10.16" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="VOUT" x="10.16" y="0" visible="pin" length="short" rot="R180"/>
<text x="-5.08" y="-7.62" size="1.778" layer="95">MCP1640</text>
</symbol>
<symbol name="JTI_1575AT43A0040">
<description>JTI_1575AT43A0040 GNSS antenna footprint.</description>
<pin name="FEED" x="-2.54" y="-2.54" visible="pin" length="short"/>
<pin name="NC" x="-2.54" y="-5.08" visible="pin" length="short"/>
<wire x1="0" y1="-5.08" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="0" y2="0" width="0.254" layer="94"/>
<text x="-7.874" y="6.096" size="1.27" layer="95">JTI_1575AT43A0040</text>
</symbol>
<symbol name="CAPACITOR">
<description>CAPACITOR</description>
<pin name="P$1" x="-5.08" y="0" visible="off" length="short"/>
<pin name="P$2" x="5.08" y="0" visible="off" length="short" rot="R180"/>
<text x="-5.08" y="3.302" size="1.905" layer="96">&gt;Value</text>
<text x="-5.08" y="-5.08" size="1.905" layer="95">&gt;Name</text>
<wire x1="-0.635" y1="-2.54" x2="-0.635" y2="0" width="0.254" layer="94"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="2.54" width="0.254" layer="94"/>
<wire x1="0.635" y1="2.54" x2="0.635" y2="0" width="0.254" layer="94"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.635" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="0.635" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="INDUCTOR">
<description>INDUCTOR</description>
<pin name="P$1" x="-7.62" y="0" visible="off" length="short"/>
<pin name="P$2" x="7.62" y="0" visible="off" length="short" rot="R180"/>
<text x="-5.08" y="3.302" size="1.905" layer="96">&gt;Value</text>
<text x="-5.08" y="-3.556" size="1.905" layer="95">&gt;Name</text>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="-2.54" y1="0" x2="0" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94" curve="-180"/>
</symbol>
<symbol name="LED">
<description>LED</description>
<pin name="ANODE" x="-5.08" y="0" visible="off" length="short"/>
<pin name="CATHODE" x="5.08" y="0" visible="off" length="short" rot="R180"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-0.508" y1="3.048" x2="0.254" y2="4.318" width="0.254" layer="94"/>
<wire x1="0.508" y1="3.048" x2="1.27" y2="4.318" width="0.254" layer="94"/>
<wire x1="0" y1="4.318" x2="0.254" y2="4.318" width="0.254" layer="94"/>
<wire x1="1.016" y1="4.318" x2="1.27" y2="4.318" width="0.254" layer="94"/>
<wire x1="0.254" y1="4.318" x2="0.254" y2="4.064" width="0.254" layer="94"/>
<wire x1="1.27" y1="4.318" x2="1.27" y2="4.064" width="0.254" layer="94"/>
</symbol>
<symbol name="RESISTOR">
<description>RESISTOR</description>
<pin name="P$1" x="-7.62" y="0" visible="off" length="short"/>
<pin name="P$2" x="5.08" y="0" visible="off" length="short" rot="R180"/>
<wire x1="-3.81" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<text x="-5.08" y="3.302" size="1.905" layer="96">&gt;Value</text>
<text x="-5.08" y="-5.08" size="1.905" layer="95">&gt;Name</text>
<wire x1="-4.445" y1="0" x2="-3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-5.08" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="CRYSTAL_4">
<description>Crystal four terminals.</description>
<pin name="GND2" x="-10.16" y="2.54" visible="pin" length="short"/>
<pin name="CR2" x="10.16" y="2.54" visible="pin" length="short" rot="R180"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<pin name="CR1" x="-10.16" y="-2.54" visible="pin" length="short"/>
<pin name="GND1" x="10.16" y="-2.54" visible="pin" length="short" rot="R180"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="2.54" width="0.254" layer="94"/>
</symbol>
<symbol name="DIODE">
<description>Diode.</description>
<pin name="ANODE" x="-5.08" y="0" visible="off" length="short"/>
<pin name="CATHODE" x="5.08" y="0" visible="off" length="short" rot="R180"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA328P-AU" prefix="U">
<description>ATMEGA328P in a TQFP32 package.</description>
<gates>
<gate name="A" symbol="ATMEGA328P-AU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ATMEGA328P-AU">
<connects>
<connect gate="A" pin="ADC6" pad="ADC6"/>
<connect gate="A" pin="ADC7" pad="ADC7"/>
<connect gate="A" pin="AREF" pad="AREF"/>
<connect gate="A" pin="AVCC" pad="AVCC"/>
<connect gate="A" pin="GND1" pad="GND1"/>
<connect gate="A" pin="GND2" pad="GND2"/>
<connect gate="A" pin="GND3" pad="GND3"/>
<connect gate="A" pin="PB0" pad="PB0"/>
<connect gate="A" pin="PB1" pad="PB1"/>
<connect gate="A" pin="PB2" pad="PB2"/>
<connect gate="A" pin="PB3" pad="PB3"/>
<connect gate="A" pin="PB4" pad="PB4"/>
<connect gate="A" pin="PB5" pad="PB5"/>
<connect gate="A" pin="PB6" pad="PB6"/>
<connect gate="A" pin="PB7" pad="PB7"/>
<connect gate="A" pin="PC0" pad="PC0"/>
<connect gate="A" pin="PC1" pad="PC1"/>
<connect gate="A" pin="PC2" pad="PC2"/>
<connect gate="A" pin="PC3" pad="PC3"/>
<connect gate="A" pin="PC4" pad="PC4"/>
<connect gate="A" pin="PC5" pad="PC5"/>
<connect gate="A" pin="PC6" pad="PC6"/>
<connect gate="A" pin="PD0" pad="PD0"/>
<connect gate="A" pin="PD1" pad="PD1"/>
<connect gate="A" pin="PD2" pad="PD2"/>
<connect gate="A" pin="PD3" pad="PD3"/>
<connect gate="A" pin="PD4" pad="PD4"/>
<connect gate="A" pin="PD5" pad="PD5"/>
<connect gate="A" pin="PD6" pad="PD6"/>
<connect gate="A" pin="PD7" pad="PD7"/>
<connect gate="A" pin="VCC1" pad="VCC1"/>
<connect gate="A" pin="VCC2" pad="VCC2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="8-bit Microcontroller with In-System Programmable Flash" constant="no"/>
<attribute name="MPN" value="ATMEGA328P-AU" constant="no"/>
<attribute name="OC_FARNELL" value="1715486" constant="no"/>
<attribute name="OC_NEWARK" value="14R4631" constant="no"/>
<attribute name="PACKAGE" value="TQFP-32" constant="no"/>
<attribute name="SUPPLIER" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UBLOX_MAX-7C" prefix="U">
<description>U-Blox MAX-M8.</description>
<gates>
<gate name="G$1" symbol="UBLOX_MAX-7C" x="-2.54" y="7.62"/>
</gates>
<devices>
<device name="" package="UBLOX_MAX-7C">
<connects>
<connect gate="G$1" pin="EXTINT" pad="EXTINT"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="GND3" pad="GND3"/>
<connect gate="G$1" pin="LNA_EN" pad="LNA_EN"/>
<connect gate="G$1" pin="RESET_N" pad="RESET_N"/>
<connect gate="G$1" pin="RF_IN" pad="RF_IN"/>
<connect gate="G$1" pin="RXD" pad="RXD"/>
<connect gate="G$1" pin="SAFEBOOT_N" pad="SAFEBOOT_N"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="TIMEPULSE" pad="TIMEPULSE"/>
<connect gate="G$1" pin="TXD" pad="TXD"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VCC_IO" pad="VCC_IO"/>
<connect gate="G$1" pin="VCC_RF" pad="VCC_RF"/>
<connect gate="G$1" pin="V_ANT" pad="V_ANT"/>
<connect gate="G$1" pin="V_BCKP" pad="V_BCKP"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SI406X" prefix="U">
<description>SI406x transmitter footprint.</description>
<gates>
<gate name="G$1" symbol="SI406X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SI406X">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GNDP" pad="GNDP"/>
<connect gate="G$1" pin="GPIO0" pad="GPIO0"/>
<connect gate="G$1" pin="GPIO1" pad="GPIO1"/>
<connect gate="G$1" pin="GPIO2" pad="GPIO2"/>
<connect gate="G$1" pin="GPIO3" pad="GPIO3"/>
<connect gate="G$1" pin="NC1" pad="NC1"/>
<connect gate="G$1" pin="NC2" pad="NC2"/>
<connect gate="G$1" pin="NC3" pad="NC3"/>
<connect gate="G$1" pin="NIRQ" pad="NIRQ"/>
<connect gate="G$1" pin="NSEL" pad="NSEL"/>
<connect gate="G$1" pin="SCLK" pad="SCLK"/>
<connect gate="G$1" pin="SDI" pad="SDI"/>
<connect gate="G$1" pin="SDN" pad="SDN"/>
<connect gate="G$1" pin="SDO" pad="SDO"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="TXRAMP" pad="TXRAMP"/>
<connect gate="G$1" pin="VDD1" pad="VDD1"/>
<connect gate="G$1" pin="VDD2" pad="VDD2"/>
<connect gate="G$1" pin="XIN" pad="XIN"/>
<connect gate="G$1" pin="XOUT" pad="XOUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="IT3205CE_TCXO_6P" prefix="U">
<description>IT3205CE 16.369MHz TCXO with 6 pads.</description>
<gates>
<gate name="G$1" symbol="IT3205CE_TCXO_6P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="IT3205CE_TCXO_6P">
<connects>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="NC1" pad="NC1"/>
<connect gate="G$1" pin="NC2" pad="NC2"/>
<connect gate="G$1" pin="OUT" pad="OUT"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MCP1640" prefix="U">
<description>MCP1640 in SOT23 package.</description>
<gates>
<gate name="G$1" symbol="MCP1640" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MCP1640">
<connects>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SW" pad="SW"/>
<connect gate="G$1" pin="VFB" pad="VFB"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="VOUT" pad="VOUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JTI_1575AT43A0040" prefix="ANT">
<description>JTI_1575AT43A0040 GNSS antenna footprint.</description>
<gates>
<gate name="G$1" symbol="JTI_1575AT43A0040" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JTI_1575AT43A0040">
<connects>
<connect gate="G$1" pin="FEED" pad="FEED"/>
<connect gate="G$1" pin="NC" pad="NC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP0402" prefix="C">
<description>CAPACITOR 0402 - 1 x 0.5 x 0.35mm</description>
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAP0402">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="IND0402" prefix="L">
<description>INDUCTOR 0402 - 1 x 0.5 x 0.35mm</description>
<gates>
<gate name="G$1" symbol="INDUCTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="IND0402">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED0603" prefix="LED">
<description>LED 0603</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED0603">
<connects>
<connect gate="G$1" pin="ANODE" pad="ANODE"/>
<connect gate="G$1" pin="CATHODE" pad="CATHODE"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES0402" prefix="R">
<description>RESISTOR 0402 - 1 x 0.5 x 0.35mm</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RES0402">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LFXTAL055663" prefix="XTAL">
<description>LFXTAL055663 XTAL footprint in a 5.0x3.2mm package.</description>
<gates>
<gate name="G$1" symbol="CRYSTAL_4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LFXTAL055663">
<connects>
<connect gate="G$1" pin="CR1" pad="CRYSTAL1"/>
<connect gate="G$1" pin="CR2" pad="CRYSTAL2"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DJNR3015" prefix="L">
<description>DJNR3015 inductor footprint.</description>
<gates>
<gate name="G$1" symbol="INDUCTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DJNR3015">
<connects>
<connect gate="G$1" pin="P$1" pad="P1"/>
<connect gate="G$1" pin="P$2" pad="P2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DIODE0402" prefix="D">
<description>DIODE 0402 - 1x0.5x0.35mm. Pad size 0.5x0.6mm. Solder Mask: 0.051mm around pads. Stencil: 66% pad coverage.</description>
<gates>
<gate name="G$1" symbol="DIODE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIODE0402">
<connects>
<connect gate="G$1" pin="ANODE" pad="ANODE"/>
<connect gate="G$1" pin="CATHODE" pad="CATHODE"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="TT7" deviceset="ATMEGA328P-AU" device=""/>
<part name="U2" library="TT7" deviceset="UBLOX_MAX-7C" device=""/>
<part name="U3" library="TT7" deviceset="SI406X" device=""/>
<part name="U4" library="TT7" deviceset="IT3205CE_TCXO_6P" device=""/>
<part name="U5" library="TT7" deviceset="MCP1640" device=""/>
<part name="ANT1" library="TT7" deviceset="JTI_1575AT43A0040" device=""/>
<part name="CPI1" library="TT7" deviceset="CAP0402" device="" value=""/>
<part name="CPI2" library="TT7" deviceset="CAP0402" device="" value=""/>
<part name="LPI1" library="TT7" deviceset="IND0402" device="" value=""/>
<part name="LED1" library="TT7" deviceset="LED0603" device=""/>
<part name="RLED1" library="TT7" deviceset="RES0402" device="" value="100-160Ω"/>
<part name="XTAL1" library="TT7" deviceset="LFXTAL055663" device=""/>
<part name="CXTAL2" library="TT7" deviceset="CAP0402" device="" value="30pF"/>
<part name="CXTAL1" library="TT7" deviceset="CAP0402" device="" value="30pF"/>
<part name="L1" library="TT7" deviceset="DJNR3015" device="" value="DJNR3015-4R7"/>
<part name="R1" library="TT7" deviceset="RES0402" device="" value="820kΩ"/>
<part name="R2" library="TT7" deviceset="RES0402" device="" value="470kΩ"/>
<part name="C1" library="TT7" deviceset="CAP0402" device="" value="4.7uF"/>
<part name="C2" library="TT7" deviceset="CAP0402" device="" value="10uF"/>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY3" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" deviceset="GND" device=""/>
<part name="LCHOKE" library="TT7" deviceset="IND0402" device="" value="220nH"/>
<part name="L0" library="TT7" deviceset="IND0402" device="" value="33nH"/>
<part name="LM1" library="TT7" deviceset="IND0402" device="" value="33nH"/>
<part name="LM2" library="TT7" deviceset="IND0402" device="" value="33nH"/>
<part name="LM3" library="TT7" deviceset="IND0402" device="" value="22nH"/>
<part name="C0" library="TT7" deviceset="CAP0402" device="" value="8.2pF"/>
<part name="CM" library="TT7" deviceset="CAP0402" device="" value="15pF"/>
<part name="CM1" library="TT7" deviceset="CAP0402" device="" value="12pF"/>
<part name="CM2" library="TT7" deviceset="CAP0402" device="" value="10pF"/>
<part name="R3" library="TT7" deviceset="RES0402" device="" value="1MΩ"/>
<part name="SUPPLY5" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY7" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY8" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY9" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY10" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY11" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY12" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY13" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY14" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY15" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY16" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY17" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY18" library="supply2" deviceset="GND" device=""/>
<part name="R4" library="TT7" deviceset="RES0402" device="" value="100kΩ"/>
<part name="SUPPLY19" library="supply2" deviceset="GND" device=""/>
<part name="R5" library="TT7" deviceset="RES0402" device="" value=""/>
<part name="R6" library="TT7" deviceset="RES0402" device="" value=""/>
<part name="L2" library="TT7" deviceset="IND0402" device="" value=""/>
<part name="C4" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="C3" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="SUPPLY20" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY21" library="supply2" deviceset="GND" device=""/>
<part name="C5" library="TT7" deviceset="CAP0402" device="" value="2.2uF"/>
<part name="C6" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="C7" library="TT7" deviceset="CAP0402" device="" value="33pF"/>
<part name="SUPPLY22" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY23" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY24" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY25" library="supply2" deviceset="GND" device=""/>
<part name="C8" library="TT7" deviceset="CAP0402" device="" value=""/>
<part name="C9" library="TT7" deviceset="CAP0402" device="" value=""/>
<part name="SUPPLY26" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY27" library="supply2" deviceset="GND" device=""/>
<part name="C10" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="C11" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="SUPPLY28" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY29" library="supply2" deviceset="GND" device=""/>
<part name="C12" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="C13" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="C14" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="R7" library="TT7" deviceset="RES0402" device="" value="10kΩ"/>
<part name="SUPPLY30" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY31" library="supply2" deviceset="GND" device=""/>
<part name="D1" library="TT7" deviceset="DIODE0402" device=""/>
<part name="C15" library="TT7" deviceset="CAP0402" device="" value="100nF"/>
<part name="SUPPLY32" library="supply2" deviceset="GND" device=""/>
<part name="R8" library="TT7" deviceset="RES0402" device="" value="0Ω"/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="2.54" y1="2.54" x2="104.14" y2="2.54" width="0.1524" layer="94"/>
<wire x1="104.14" y1="2.54" x2="337.82" y2="2.54" width="0.1524" layer="94"/>
<wire x1="337.82" y1="2.54" x2="421.64" y2="2.54" width="0.1524" layer="94"/>
<wire x1="421.64" y1="2.54" x2="421.64" y2="86.36" width="0.1524" layer="94"/>
<wire x1="421.64" y1="86.36" x2="421.64" y2="220.98" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="99.06" width="0.1524" layer="94"/>
<wire x1="2.54" y1="99.06" x2="2.54" y2="220.98" width="0.1524" layer="94"/>
<wire x1="2.54" y1="220.98" x2="203.2" y2="220.98" width="0.1524" layer="94"/>
<wire x1="203.2" y1="220.98" x2="421.64" y2="220.98" width="0.1524" layer="94"/>
<wire x1="2.54" y1="99.06" x2="104.14" y2="99.06" width="0.1524" layer="94"/>
<wire x1="104.14" y1="99.06" x2="104.14" y2="86.36" width="0.1524" layer="94"/>
<text x="220.98" y="195.58" size="1.778" layer="94">SDN - may not be necessary (30nA in Shutdown vs. 50nA in Standby)</text>
<text x="223.52" y="193.04" size="1.778" layer="94">SDN = HIGH (Shutdown state)</text>
<text x="220.98" y="190.5" size="1.778" layer="94">two GPIOs for GFSK - data in, clock out</text>
<text x="220.98" y="187.96" size="1.778" layer="94">Xin - external signal or TCXO, AC-coupled 0.6-1.4 Vp-p swing</text>
<text x="223.52" y="185.42" size="1.778" layer="94">max. 1.8Vp-p DC-coupled</text>
<text x="116.84" y="71.12" size="1.778" layer="94">Timepulse frequency 4/8MHz - Low-Pass Filter cut-off frequency above that.</text>
<text x="116.84" y="68.58" size="1.778" layer="94">Timepulse output swing: 4.7Vp-p - voltage divider to &lt; 1.4Vp-p.</text>
<text x="226.06" y="17.78" size="1.778" layer="94">Info: MAX-M8C - 26MHz internal crystal oscillator</text>
<wire x1="104.14" y1="86.36" x2="104.14" y2="2.54" width="0.1524" layer="94"/>
<wire x1="337.82" y1="86.36" x2="203.2" y2="86.36" width="0.1524" layer="94"/>
<wire x1="203.2" y1="86.36" x2="104.14" y2="86.36" width="0.1524" layer="94"/>
<wire x1="337.82" y1="86.36" x2="337.82" y2="2.54" width="0.1524" layer="94"/>
<wire x1="203.2" y1="86.36" x2="203.2" y2="220.98" width="0.1524" layer="94"/>
<wire x1="337.82" y1="86.36" x2="421.64" y2="86.36" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="424.18" y2="0" width="0.1524" layer="94"/>
<wire x1="424.18" y1="0" x2="424.18" y2="223.52" width="0.1524" layer="94"/>
<wire x1="424.18" y1="223.52" x2="0" y2="223.52" width="0.1524" layer="94"/>
<wire x1="0" y1="223.52" x2="0" y2="0" width="0.1524" layer="94"/>
<text x="345.44" y="73.66" size="3.81" layer="94">TT7D Tracker</text>
<text x="345.44" y="68.58" size="1.778" layer="94">APRS / RTTY high altitude balloon tracker.</text>
<text x="345.44" y="66.04" size="1.778" layer="94">ATmega328P</text>
<text x="345.44" y="63.5" size="1.778" layer="94">u-blox MAX-M8Q</text>
<text x="345.44" y="60.96" size="1.778" layer="94">Si4060 / Si4063 / Si4460 / Si4463</text>
<text x="345.44" y="58.42" size="1.778" layer="94">3.3V operating voltage, power source: AAA primary cell.</text>
<text x="345.44" y="55.88" size="1.778" layer="94">Optionally solar powered - two cells instead of battery.</text>
</plain>
<instances>
<instance part="U1" gate="A" x="114.3" y="147.32"/>
<instance part="U2" gate="G$1" x="243.84" y="55.88"/>
<instance part="U3" gate="G$1" x="370.84" y="147.32"/>
<instance part="U4" gate="G$1" x="360.68" y="198.12"/>
<instance part="U5" gate="G$1" x="33.02" y="55.88"/>
<instance part="ANT1" gate="G$1" x="317.5" y="50.8"/>
<instance part="CPI1" gate="G$1" x="309.88" y="38.1" rot="R90"/>
<instance part="CPI2" gate="G$1" x="284.48" y="38.1" rot="R90"/>
<instance part="LPI1" gate="G$1" x="297.18" y="48.26"/>
<instance part="LED1" gate="G$1" x="45.72" y="203.2" rot="R180"/>
<instance part="RLED1" gate="G$1" x="30.48" y="203.2"/>
<instance part="XTAL1" gate="G$1" x="35.56" y="139.7" rot="R180"/>
<instance part="CXTAL2" gate="G$1" x="22.86" y="127" rot="R90"/>
<instance part="CXTAL1" gate="G$1" x="55.88" y="127" rot="R90"/>
<instance part="L1" gate="G$1" x="33.02" y="78.74"/>
<instance part="R1" gate="G$1" x="60.96" y="48.26" rot="R90"/>
<instance part="R2" gate="G$1" x="60.96" y="30.48" rot="R90"/>
<instance part="C1" gate="G$1" x="68.58" y="76.2" rot="R90"/>
<instance part="C2" gate="G$1" x="78.74" y="48.26" rot="R90"/>
<instance part="SUPPLY1" gate="GND" x="20.32" y="45.72"/>
<instance part="SUPPLY2" gate="GND" x="68.58" y="66.04"/>
<instance part="SUPPLY3" gate="GND" x="60.96" y="17.78"/>
<instance part="SUPPLY4" gate="GND" x="78.74" y="38.1"/>
<instance part="LCHOKE" gate="G$1" x="340.36" y="134.62" rot="R90"/>
<instance part="L0" gate="G$1" x="309.88" y="144.78"/>
<instance part="LM1" gate="G$1" x="289.56" y="144.78"/>
<instance part="LM2" gate="G$1" x="269.24" y="144.78"/>
<instance part="LM3" gate="G$1" x="248.92" y="144.78"/>
<instance part="C0" gate="G$1" x="327.66" y="144.78"/>
<instance part="CM" gate="G$1" x="299.72" y="134.62" rot="R90"/>
<instance part="CM1" gate="G$1" x="279.4" y="134.62" rot="R90"/>
<instance part="CM2" gate="G$1" x="259.08" y="134.62" rot="R90"/>
<instance part="R3" gate="G$1" x="233.68" y="134.62" rot="R90"/>
<instance part="SUPPLY5" gate="GND" x="233.68" y="121.92"/>
<instance part="SUPPLY6" gate="GND" x="259.08" y="121.92"/>
<instance part="SUPPLY7" gate="GND" x="279.4" y="121.92"/>
<instance part="SUPPLY8" gate="GND" x="299.72" y="121.92"/>
<instance part="SUPPLY9" gate="GND" x="345.44" y="162.56"/>
<instance part="SUPPLY10" gate="GND" x="134.62" y="127"/>
<instance part="SUPPLY11" gate="GND" x="91.44" y="127"/>
<instance part="SUPPLY12" gate="GND" x="55.88" y="114.3"/>
<instance part="SUPPLY13" gate="GND" x="22.86" y="114.3"/>
<instance part="SUPPLY14" gate="GND" x="266.7" y="40.64"/>
<instance part="SUPPLY15" gate="GND" x="220.98" y="40.64"/>
<instance part="SUPPLY16" gate="GND" x="17.78" y="195.58"/>
<instance part="SUPPLY17" gate="GND" x="284.48" y="27.94"/>
<instance part="SUPPLY18" gate="GND" x="309.88" y="27.94"/>
<instance part="R4" gate="G$1" x="325.12" y="172.72" rot="R180"/>
<instance part="SUPPLY19" gate="GND" x="314.96" y="165.1"/>
<instance part="R5" gate="G$1" x="193.04" y="58.42" rot="R180"/>
<instance part="R6" gate="G$1" x="182.88" y="45.72" rot="R270"/>
<instance part="L2" gate="G$1" x="147.32" y="58.42"/>
<instance part="C4" gate="G$1" x="386.08" y="193.04" rot="R90"/>
<instance part="C3" gate="G$1" x="373.38" y="182.88" rot="R90"/>
<instance part="SUPPLY20" gate="GND" x="347.98" y="187.96"/>
<instance part="SUPPLY21" gate="GND" x="386.08" y="182.88"/>
<instance part="C5" gate="G$1" x="347.98" y="114.3" rot="R90"/>
<instance part="C6" gate="G$1" x="363.22" y="114.3" rot="R90"/>
<instance part="C7" gate="G$1" x="378.46" y="114.3" rot="R90"/>
<instance part="SUPPLY22" gate="GND" x="347.98" y="104.14"/>
<instance part="SUPPLY23" gate="GND" x="363.22" y="104.14"/>
<instance part="SUPPLY24" gate="GND" x="378.46" y="104.14"/>
<instance part="SUPPLY25" gate="GND" x="182.88" y="35.56"/>
<instance part="C8" gate="G$1" x="134.62" y="48.26" rot="R90"/>
<instance part="C9" gate="G$1" x="160.02" y="48.26" rot="R90"/>
<instance part="SUPPLY26" gate="GND" x="160.02" y="35.56"/>
<instance part="SUPPLY27" gate="GND" x="134.62" y="35.56"/>
<instance part="C10" gate="G$1" x="386.08" y="170.18" rot="R180"/>
<instance part="C11" gate="G$1" x="213.36" y="27.94" rot="R90"/>
<instance part="SUPPLY28" gate="GND" x="213.36" y="17.78"/>
<instance part="SUPPLY29" gate="GND" x="350.52" y="137.16"/>
<instance part="C12" gate="G$1" x="147.32" y="190.5" rot="R90"/>
<instance part="C13" gate="G$1" x="53.34" y="175.26" rot="R90"/>
<instance part="C14" gate="G$1" x="160.02" y="139.7" rot="R90"/>
<instance part="R7" gate="G$1" x="170.18" y="203.2"/>
<instance part="SUPPLY30" gate="GND" x="147.32" y="180.34"/>
<instance part="SUPPLY31" gate="GND" x="53.34" y="165.1"/>
<instance part="D1" gate="G$1" x="170.18" y="193.04"/>
<instance part="C15" gate="G$1" x="177.8" y="147.32" rot="R90"/>
<instance part="SUPPLY32" gate="GND" x="177.8" y="137.16"/>
<instance part="R8" gate="G$1" x="172.72" y="167.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$9" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="SW"/>
<wire x1="22.86" y1="58.42" x2="20.32" y2="58.42" width="0.1524" layer="91"/>
<wire x1="20.32" y1="58.42" x2="20.32" y2="78.74" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="P$1"/>
<wire x1="20.32" y1="78.74" x2="25.4" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VBAT+" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="VIN"/>
<wire x1="43.18" y1="58.42" x2="45.72" y2="58.42" width="0.1524" layer="91"/>
<wire x1="45.72" y1="58.42" x2="45.72" y2="66.04" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="P$2"/>
<wire x1="45.72" y1="66.04" x2="45.72" y2="78.74" width="0.1524" layer="91"/>
<wire x1="45.72" y1="78.74" x2="40.64" y2="78.74" width="0.1524" layer="91"/>
<junction x="45.72" y="66.04"/>
<pinref part="U5" gate="G$1" pin="EN"/>
<wire x1="22.86" y1="53.34" x2="15.24" y2="53.34" width="0.1524" layer="91"/>
<wire x1="15.24" y1="53.34" x2="15.24" y2="66.04" width="0.1524" layer="91"/>
<wire x1="15.24" y1="66.04" x2="45.72" y2="66.04" width="0.1524" layer="91"/>
<wire x1="45.72" y1="78.74" x2="50.8" y2="78.74" width="0.1524" layer="91"/>
<junction x="45.72" y="78.74"/>
<wire x1="50.8" y1="78.74" x2="50.8" y2="83.82" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="P$2"/>
<wire x1="68.58" y1="83.82" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<wire x1="68.58" y1="83.82" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<label x="83.82" y="83.82" size="1.778" layer="95"/>
<wire x1="50.8" y1="83.82" x2="68.58" y2="83.82" width="0.1524" layer="91"/>
<junction x="68.58" y="83.82"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="P$2"/>
<wire x1="177.8" y1="167.64" x2="190.5" y2="167.64" width="0.1524" layer="91"/>
<label x="182.88" y="167.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="GND"/>
<wire x1="22.86" y1="55.88" x2="20.32" y2="55.88" width="0.1524" layer="91"/>
<wire x1="20.32" y1="55.88" x2="20.32" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<pinref part="C1" gate="G$1" pin="P$1"/>
<wire x1="68.58" y1="68.58" x2="68.58" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<pinref part="R2" gate="G$1" pin="P$1"/>
<wire x1="60.96" y1="20.32" x2="60.96" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<pinref part="C2" gate="G$1" pin="P$1"/>
<wire x1="78.74" y1="40.64" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<pinref part="R3" gate="G$1" pin="P$1"/>
<wire x1="233.68" y1="124.46" x2="233.68" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<pinref part="CM2" gate="G$1" pin="P$1"/>
<wire x1="259.08" y1="124.46" x2="259.08" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<pinref part="CM1" gate="G$1" pin="P$1"/>
<wire x1="279.4" y1="124.46" x2="279.4" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<pinref part="CM" gate="G$1" pin="P$1"/>
<wire x1="299.72" y1="124.46" x2="299.72" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<wire x1="370.84" y1="165.1" x2="370.84" y2="167.64" width="0.1524" layer="91"/>
<wire x1="370.84" y1="167.64" x2="350.52" y2="167.64" width="0.1524" layer="91"/>
<wire x1="350.52" y1="167.64" x2="350.52" y2="157.48" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="GNDP"/>
<wire x1="350.52" y1="157.48" x2="353.06" y2="157.48" width="0.1524" layer="91"/>
<wire x1="350.52" y1="167.64" x2="345.44" y2="167.64" width="0.1524" layer="91"/>
<junction x="350.52" y="167.64"/>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
<wire x1="345.44" y1="167.64" x2="345.44" y2="165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="GND1"/>
<wire x1="93.98" y1="152.4" x2="91.44" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
<wire x1="91.44" y1="152.4" x2="91.44" y2="147.32" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="GND2"/>
<wire x1="91.44" y1="147.32" x2="91.44" y2="129.54" width="0.1524" layer="91"/>
<wire x1="93.98" y1="147.32" x2="91.44" y2="147.32" width="0.1524" layer="91"/>
<junction x="91.44" y="147.32"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="GND3"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
<wire x1="132.08" y1="149.86" x2="134.62" y2="149.86" width="0.1524" layer="91"/>
<wire x1="134.62" y1="149.86" x2="134.62" y2="132.08" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="P$1"/>
<wire x1="134.62" y1="132.08" x2="134.62" y2="129.54" width="0.1524" layer="91"/>
<wire x1="160.02" y1="134.62" x2="160.02" y2="132.08" width="0.1524" layer="91"/>
<wire x1="160.02" y1="132.08" x2="134.62" y2="132.08" width="0.1524" layer="91"/>
<junction x="134.62" y="132.08"/>
</segment>
<segment>
<pinref part="XTAL1" gate="G$1" pin="GND2"/>
<wire x1="45.72" y1="137.16" x2="48.26" y2="137.16" width="0.1524" layer="91"/>
<wire x1="48.26" y1="137.16" x2="48.26" y2="119.38" width="0.1524" layer="91"/>
<wire x1="48.26" y1="119.38" x2="55.88" y2="119.38" width="0.1524" layer="91"/>
<pinref part="SUPPLY12" gate="GND" pin="GND"/>
<wire x1="55.88" y1="119.38" x2="55.88" y2="116.84" width="0.1524" layer="91"/>
<pinref part="CXTAL1" gate="G$1" pin="P$1"/>
<wire x1="55.88" y1="119.38" x2="55.88" y2="121.92" width="0.1524" layer="91"/>
<junction x="55.88" y="119.38"/>
</segment>
<segment>
<pinref part="SUPPLY13" gate="GND" pin="GND"/>
<pinref part="CXTAL2" gate="G$1" pin="P$1"/>
<wire x1="22.86" y1="116.84" x2="22.86" y2="119.38" width="0.1524" layer="91"/>
<wire x1="22.86" y1="119.38" x2="22.86" y2="121.92" width="0.1524" layer="91"/>
<wire x1="22.86" y1="119.38" x2="15.24" y2="119.38" width="0.1524" layer="91"/>
<junction x="22.86" y="119.38"/>
<wire x1="15.24" y1="119.38" x2="15.24" y2="142.24" width="0.1524" layer="91"/>
<pinref part="XTAL1" gate="G$1" pin="GND1"/>
<wire x1="15.24" y1="142.24" x2="25.4" y2="142.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND2"/>
<pinref part="SUPPLY14" gate="GND" pin="GND"/>
<wire x1="264.16" y1="45.72" x2="266.7" y2="45.72" width="0.1524" layer="91"/>
<wire x1="266.7" y1="45.72" x2="266.7" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="GND3"/>
<wire x1="264.16" y1="50.8" x2="266.7" y2="50.8" width="0.1524" layer="91"/>
<wire x1="266.7" y1="50.8" x2="266.7" y2="45.72" width="0.1524" layer="91"/>
<junction x="266.7" y="45.72"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND1"/>
<pinref part="SUPPLY15" gate="GND" pin="GND"/>
<wire x1="223.52" y1="66.04" x2="220.98" y2="66.04" width="0.1524" layer="91"/>
<wire x1="220.98" y1="66.04" x2="220.98" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RLED1" gate="G$1" pin="P$1"/>
<pinref part="SUPPLY16" gate="GND" pin="GND"/>
<wire x1="22.86" y1="203.2" x2="17.78" y2="203.2" width="0.1524" layer="91"/>
<wire x1="17.78" y1="203.2" x2="17.78" y2="198.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY18" gate="GND" pin="GND"/>
<pinref part="CPI1" gate="G$1" pin="P$1"/>
<wire x1="309.88" y1="30.48" x2="309.88" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY17" gate="GND" pin="GND"/>
<pinref part="CPI2" gate="G$1" pin="P$1"/>
<wire x1="284.48" y1="30.48" x2="284.48" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="P$2"/>
<pinref part="SUPPLY19" gate="GND" pin="GND"/>
<wire x1="320.04" y1="172.72" x2="314.96" y2="172.72" width="0.1524" layer="91"/>
<wire x1="314.96" y1="172.72" x2="314.96" y2="167.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY20" gate="GND" pin="GND"/>
<wire x1="347.98" y1="190.5" x2="347.98" y2="193.04" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND2"/>
<wire x1="347.98" y1="193.04" x2="350.52" y2="193.04" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND1"/>
<wire x1="350.52" y1="203.2" x2="347.98" y2="203.2" width="0.1524" layer="91"/>
<wire x1="347.98" y1="203.2" x2="347.98" y2="193.04" width="0.1524" layer="91"/>
<junction x="347.98" y="193.04"/>
</segment>
<segment>
<pinref part="SUPPLY21" gate="GND" pin="GND"/>
<pinref part="C4" gate="G$1" pin="P$1"/>
<wire x1="386.08" y1="185.42" x2="386.08" y2="187.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="P$1"/>
<pinref part="SUPPLY24" gate="GND" pin="GND"/>
<wire x1="378.46" y1="109.22" x2="378.46" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="P$1"/>
<pinref part="SUPPLY23" gate="GND" pin="GND"/>
<wire x1="363.22" y1="109.22" x2="363.22" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="P$1"/>
<pinref part="SUPPLY22" gate="GND" pin="GND"/>
<wire x1="347.98" y1="109.22" x2="347.98" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY25" gate="GND" pin="GND"/>
<pinref part="R6" gate="G$1" pin="P$2"/>
<wire x1="182.88" y1="38.1" x2="182.88" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY26" gate="GND" pin="GND"/>
<pinref part="C9" gate="G$1" pin="P$1"/>
<wire x1="160.02" y1="38.1" x2="160.02" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY27" gate="GND" pin="GND"/>
<pinref part="C8" gate="G$1" pin="P$1"/>
<wire x1="134.62" y1="38.1" x2="134.62" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY28" gate="GND" pin="GND"/>
<pinref part="C11" gate="G$1" pin="P$1"/>
<wire x1="213.36" y1="20.32" x2="213.36" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="NC3"/>
<pinref part="SUPPLY29" gate="GND" pin="GND"/>
<wire x1="353.06" y1="142.24" x2="350.52" y2="142.24" width="0.1524" layer="91"/>
<wire x1="350.52" y1="142.24" x2="350.52" y2="139.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY30" gate="GND" pin="GND"/>
<pinref part="C12" gate="G$1" pin="P$1"/>
<wire x1="147.32" y1="182.88" x2="147.32" y2="185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY31" gate="GND" pin="GND"/>
<pinref part="C13" gate="G$1" pin="P$1"/>
<wire x1="53.34" y1="167.64" x2="53.34" y2="170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY32" gate="GND" pin="GND"/>
<pinref part="C15" gate="G$1" pin="P$1"/>
<wire x1="177.8" y1="139.7" x2="177.8" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="VOUT"/>
<wire x1="43.18" y1="55.88" x2="60.96" y2="55.88" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="P$2"/>
<wire x1="60.96" y1="55.88" x2="60.96" y2="53.34" width="0.1524" layer="91"/>
<wire x1="60.96" y1="55.88" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<junction x="60.96" y="55.88"/>
<pinref part="C2" gate="G$1" pin="P$2"/>
<wire x1="78.74" y1="55.88" x2="78.74" y2="53.34" width="0.1524" layer="91"/>
<wire x1="78.74" y1="55.88" x2="91.44" y2="55.88" width="0.1524" layer="91"/>
<junction x="78.74" y="55.88"/>
<label x="86.36" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="V_BCKP"/>
<wire x1="223.52" y1="53.34" x2="213.36" y2="53.34" width="0.1524" layer="91"/>
<wire x1="213.36" y1="53.34" x2="213.36" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="VCC_IO"/>
<wire x1="213.36" y1="50.8" x2="213.36" y2="48.26" width="0.1524" layer="91"/>
<wire x1="213.36" y1="48.26" x2="213.36" y2="38.1" width="0.1524" layer="91"/>
<wire x1="213.36" y1="38.1" x2="213.36" y2="33.02" width="0.1524" layer="91"/>
<wire x1="223.52" y1="50.8" x2="213.36" y2="50.8" width="0.1524" layer="91"/>
<junction x="213.36" y="50.8"/>
<pinref part="U2" gate="G$1" pin="VCC"/>
<wire x1="223.52" y1="48.26" x2="213.36" y2="48.26" width="0.1524" layer="91"/>
<junction x="213.36" y="48.26"/>
<pinref part="C11" gate="G$1" pin="P$2"/>
<wire x1="213.36" y1="38.1" x2="200.66" y2="38.1" width="0.1524" layer="91"/>
<junction x="213.36" y="38.1"/>
<label x="200.66" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LCHOKE" gate="G$1" pin="P$1"/>
<wire x1="340.36" y1="127" x2="340.36" y2="124.46" width="0.1524" layer="91"/>
<wire x1="340.36" y1="124.46" x2="347.98" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="VDD2"/>
<wire x1="347.98" y1="124.46" x2="363.22" y2="124.46" width="0.1524" layer="91"/>
<wire x1="363.22" y1="124.46" x2="365.76" y2="124.46" width="0.1524" layer="91"/>
<wire x1="365.76" y1="124.46" x2="370.84" y2="124.46" width="0.1524" layer="91"/>
<wire x1="370.84" y1="124.46" x2="370.84" y2="129.54" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="VDD1"/>
<wire x1="365.76" y1="129.54" x2="365.76" y2="124.46" width="0.1524" layer="91"/>
<junction x="365.76" y="124.46"/>
<pinref part="C5" gate="G$1" pin="P$2"/>
<wire x1="347.98" y1="119.38" x2="347.98" y2="124.46" width="0.1524" layer="91"/>
<junction x="347.98" y="124.46"/>
<pinref part="C6" gate="G$1" pin="P$2"/>
<wire x1="363.22" y1="119.38" x2="363.22" y2="124.46" width="0.1524" layer="91"/>
<junction x="363.22" y="124.46"/>
<wire x1="370.84" y1="124.46" x2="378.46" y2="124.46" width="0.1524" layer="91"/>
<junction x="370.84" y="124.46"/>
<pinref part="C7" gate="G$1" pin="P$2"/>
<wire x1="378.46" y1="124.46" x2="401.32" y2="124.46" width="0.1524" layer="91"/>
<wire x1="378.46" y1="119.38" x2="378.46" y2="124.46" width="0.1524" layer="91"/>
<junction x="378.46" y="124.46"/>
<label x="393.7" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="CATHODE"/>
<wire x1="175.26" y1="193.04" x2="177.8" y2="193.04" width="0.1524" layer="91"/>
<wire x1="177.8" y1="193.04" x2="177.8" y2="198.12" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="P$2"/>
<wire x1="177.8" y1="198.12" x2="177.8" y2="203.2" width="0.1524" layer="91"/>
<wire x1="177.8" y1="203.2" x2="175.26" y2="203.2" width="0.1524" layer="91"/>
<wire x1="177.8" y1="198.12" x2="190.5" y2="198.12" width="0.1524" layer="91"/>
<junction x="177.8" y="198.12"/>
<label x="185.42" y="198.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="VCC2"/>
<wire x1="93.98" y1="144.78" x2="71.12" y2="144.78" width="0.1524" layer="91"/>
<wire x1="71.12" y1="144.78" x2="71.12" y2="149.86" width="0.1524" layer="91"/>
<wire x1="71.12" y1="149.86" x2="71.12" y2="182.88" width="0.1524" layer="91"/>
<wire x1="71.12" y1="182.88" x2="53.34" y2="182.88" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="P$2"/>
<wire x1="53.34" y1="182.88" x2="40.64" y2="182.88" width="0.1524" layer="91"/>
<wire x1="53.34" y1="180.34" x2="53.34" y2="182.88" width="0.1524" layer="91"/>
<junction x="53.34" y="182.88"/>
<pinref part="U1" gate="A" pin="VCC1"/>
<wire x1="93.98" y1="149.86" x2="71.12" y2="149.86" width="0.1524" layer="91"/>
<junction x="71.12" y="149.86"/>
<label x="40.64" y="182.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="AVCC"/>
<wire x1="132.08" y1="142.24" x2="149.86" y2="142.24" width="0.1524" layer="91"/>
<wire x1="149.86" y1="142.24" x2="149.86" y2="154.94" width="0.1524" layer="91"/>
<wire x1="149.86" y1="154.94" x2="177.8" y2="154.94" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="P$2"/>
<wire x1="177.8" y1="154.94" x2="190.5" y2="154.94" width="0.1524" layer="91"/>
<wire x1="177.8" y1="152.4" x2="177.8" y2="154.94" width="0.1524" layer="91"/>
<junction x="177.8" y="154.94"/>
<label x="185.42" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="P$2"/>
<pinref part="R1" gate="G$1" pin="P$1"/>
<wire x1="60.96" y1="35.56" x2="60.96" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="VFB"/>
<wire x1="60.96" y1="38.1" x2="60.96" y2="40.64" width="0.1524" layer="91"/>
<wire x1="43.18" y1="53.34" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<wire x1="45.72" y1="53.34" x2="45.72" y2="38.1" width="0.1524" layer="91"/>
<wire x1="45.72" y1="38.1" x2="60.96" y2="38.1" width="0.1524" layer="91"/>
<junction x="60.96" y="38.1"/>
</segment>
</net>
<net name="RF_OUT" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="P$2"/>
<wire x1="233.68" y1="139.7" x2="233.68" y2="144.78" width="0.1524" layer="91"/>
<pinref part="LM3" gate="G$1" pin="P$1"/>
<wire x1="233.68" y1="144.78" x2="241.3" y2="144.78" width="0.1524" layer="91"/>
<wire x1="233.68" y1="144.78" x2="215.9" y2="144.78" width="0.1524" layer="91"/>
<junction x="233.68" y="144.78"/>
<label x="215.9" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="CM" gate="G$1" pin="P$2"/>
<wire x1="299.72" y1="139.7" x2="299.72" y2="144.78" width="0.1524" layer="91"/>
<pinref part="LM1" gate="G$1" pin="P$2"/>
<wire x1="299.72" y1="144.78" x2="297.18" y2="144.78" width="0.1524" layer="91"/>
<pinref part="L0" gate="G$1" pin="P$1"/>
<wire x1="302.26" y1="144.78" x2="299.72" y2="144.78" width="0.1524" layer="91"/>
<junction x="299.72" y="144.78"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="LM1" gate="G$1" pin="P$1"/>
<pinref part="LM2" gate="G$1" pin="P$2"/>
<wire x1="281.94" y1="144.78" x2="279.4" y2="144.78" width="0.1524" layer="91"/>
<pinref part="CM1" gate="G$1" pin="P$2"/>
<wire x1="279.4" y1="144.78" x2="276.86" y2="144.78" width="0.1524" layer="91"/>
<wire x1="279.4" y1="144.78" x2="279.4" y2="139.7" width="0.1524" layer="91"/>
<junction x="279.4" y="144.78"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="CM2" gate="G$1" pin="P$2"/>
<wire x1="259.08" y1="139.7" x2="259.08" y2="144.78" width="0.1524" layer="91"/>
<pinref part="LM3" gate="G$1" pin="P$2"/>
<wire x1="259.08" y1="144.78" x2="256.54" y2="144.78" width="0.1524" layer="91"/>
<pinref part="LM2" gate="G$1" pin="P$1"/>
<wire x1="259.08" y1="144.78" x2="261.62" y2="144.78" width="0.1524" layer="91"/>
<junction x="259.08" y="144.78"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="L0" gate="G$1" pin="P$2"/>
<pinref part="C0" gate="G$1" pin="P$1"/>
<wire x1="317.5" y1="144.78" x2="322.58" y2="144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="C0" gate="G$1" pin="P$2"/>
<pinref part="U3" gate="G$1" pin="TX"/>
<wire x1="332.74" y1="144.78" x2="340.36" y2="144.78" width="0.1524" layer="91"/>
<pinref part="LCHOKE" gate="G$1" pin="P$2"/>
<wire x1="340.36" y1="144.78" x2="353.06" y2="144.78" width="0.1524" layer="91"/>
<wire x1="340.36" y1="142.24" x2="340.36" y2="144.78" width="0.1524" layer="91"/>
<junction x="340.36" y="144.78"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="SCLK"/>
<wire x1="388.62" y1="144.78" x2="401.32" y2="144.78" width="0.1524" layer="91"/>
<label x="393.7" y="144.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PB5"/>
<wire x1="132.08" y1="139.7" x2="144.78" y2="139.7" width="0.1524" layer="91"/>
<label x="139.7" y="139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="SDO"/>
<wire x1="388.62" y1="147.32" x2="401.32" y2="147.32" width="0.1524" layer="91"/>
<label x="393.7" y="147.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PB4"/>
<wire x1="121.92" y1="129.54" x2="121.92" y2="116.84" width="0.1524" layer="91"/>
<label x="121.92" y="116.84" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="SDI"/>
<wire x1="388.62" y1="149.86" x2="401.32" y2="149.86" width="0.1524" layer="91"/>
<label x="393.7" y="149.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PB3"/>
<wire x1="119.38" y1="116.84" x2="119.38" y2="129.54" width="0.1524" layer="91"/>
<label x="119.38" y="116.84" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="NSEL" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="NSEL"/>
<wire x1="388.62" y1="152.4" x2="401.32" y2="152.4" width="0.1524" layer="91"/>
<label x="393.7" y="152.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PB2"/>
<wire x1="116.84" y1="129.54" x2="116.84" y2="116.84" width="0.1524" layer="91"/>
<label x="116.84" y="116.84" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="C12" gate="G$1" pin="P$2"/>
<wire x1="147.32" y1="195.58" x2="147.32" y2="198.12" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="P$1"/>
<wire x1="162.56" y1="203.2" x2="160.02" y2="203.2" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="ANODE"/>
<wire x1="165.1" y1="193.04" x2="160.02" y2="193.04" width="0.1524" layer="91"/>
<wire x1="160.02" y1="193.04" x2="160.02" y2="198.12" width="0.1524" layer="91"/>
<wire x1="160.02" y1="198.12" x2="160.02" y2="203.2" width="0.1524" layer="91"/>
<wire x1="147.32" y1="198.12" x2="160.02" y2="198.12" width="0.1524" layer="91"/>
<junction x="160.02" y="198.12"/>
<pinref part="U1" gate="A" pin="PC6"/>
<wire x1="111.76" y1="167.64" x2="111.76" y2="187.96" width="0.1524" layer="91"/>
<label x="121.92" y="198.12" size="1.778" layer="95"/>
<wire x1="111.76" y1="187.96" x2="134.62" y2="187.96" width="0.1524" layer="91"/>
<wire x1="134.62" y1="187.96" x2="134.62" y2="198.12" width="0.1524" layer="91"/>
<wire x1="134.62" y1="198.12" x2="147.32" y2="198.12" width="0.1524" layer="91"/>
<junction x="147.32" y="198.12"/>
<wire x1="134.62" y1="198.12" x2="121.92" y2="198.12" width="0.1524" layer="91"/>
<junction x="134.62" y="198.12"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="XTAL1" gate="G$1" pin="CR1"/>
<wire x1="45.72" y1="142.24" x2="55.88" y2="142.24" width="0.1524" layer="91"/>
<pinref part="CXTAL1" gate="G$1" pin="P$2"/>
<wire x1="55.88" y1="132.08" x2="55.88" y2="142.24" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB6"/>
<wire x1="55.88" y1="142.24" x2="93.98" y2="142.24" width="0.1524" layer="91"/>
<junction x="55.88" y="142.24"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="CXTAL2" gate="G$1" pin="P$2"/>
<wire x1="22.86" y1="132.08" x2="22.86" y2="137.16" width="0.1524" layer="91"/>
<pinref part="XTAL1" gate="G$1" pin="CR2"/>
<wire x1="22.86" y1="137.16" x2="25.4" y2="137.16" width="0.1524" layer="91"/>
<wire x1="22.86" y1="137.16" x2="22.86" y2="147.32" width="0.1524" layer="91"/>
<junction x="22.86" y="137.16"/>
<wire x1="22.86" y1="147.32" x2="60.96" y2="147.32" width="0.1524" layer="91"/>
<wire x1="60.96" y1="147.32" x2="60.96" y2="139.7" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB7"/>
<wire x1="60.96" y1="139.7" x2="93.98" y2="139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U1" gate="A" pin="PD0"/>
<wire x1="109.22" y1="167.64" x2="109.22" y2="180.34" width="0.1524" layer="91"/>
<label x="109.22" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="TXD"/>
<wire x1="223.52" y1="63.5" x2="210.82" y2="63.5" width="0.1524" layer="91"/>
<label x="210.82" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="U1" gate="A" pin="PD1"/>
<wire x1="106.68" y1="167.64" x2="106.68" y2="180.34" width="0.1524" layer="91"/>
<label x="106.68" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="RXD"/>
<wire x1="223.52" y1="60.96" x2="210.82" y2="60.96" width="0.1524" layer="91"/>
<label x="210.82" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="CATHODE"/>
<pinref part="RLED1" gate="G$1" pin="P$2"/>
<wire x1="40.64" y1="203.2" x2="35.56" y2="203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RF_IN" class="0">
<segment>
<pinref part="ANT1" gate="G$1" pin="FEED"/>
<pinref part="LPI1" gate="G$1" pin="P$2"/>
<wire x1="314.96" y1="48.26" x2="309.88" y2="48.26" width="0.1524" layer="91"/>
<pinref part="CPI1" gate="G$1" pin="P$2"/>
<wire x1="309.88" y1="48.26" x2="304.8" y2="48.26" width="0.1524" layer="91"/>
<wire x1="309.88" y1="43.18" x2="309.88" y2="48.26" width="0.1524" layer="91"/>
<junction x="309.88" y="48.26"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="LPI1" gate="G$1" pin="P$1"/>
<pinref part="U2" gate="G$1" pin="RF_IN"/>
<wire x1="289.56" y1="48.26" x2="284.48" y2="48.26" width="0.1524" layer="91"/>
<pinref part="CPI2" gate="G$1" pin="P$2"/>
<wire x1="284.48" y1="48.26" x2="264.16" y2="48.26" width="0.1524" layer="91"/>
<wire x1="284.48" y1="43.18" x2="284.48" y2="48.26" width="0.1524" layer="91"/>
<junction x="284.48" y="48.26"/>
</segment>
</net>
<net name="SDN" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="SDN"/>
<wire x1="353.06" y1="152.4" x2="337.82" y2="152.4" width="0.1524" layer="91"/>
<wire x1="337.82" y1="152.4" x2="337.82" y2="172.72" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="P$1"/>
<wire x1="337.82" y1="172.72" x2="332.74" y2="172.72" width="0.1524" layer="91"/>
<wire x1="337.82" y1="172.72" x2="337.82" y2="182.88" width="0.1524" layer="91"/>
<junction x="337.82" y="172.72"/>
<wire x1="337.82" y1="182.88" x2="325.12" y2="182.88" width="0.1524" layer="91"/>
<label x="325.12" y="182.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PB1"/>
<wire x1="114.3" y1="129.54" x2="114.3" y2="116.84" width="0.1524" layer="91"/>
<label x="114.3" y="116.84" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="C3" gate="G$1" pin="P$2"/>
<wire x1="373.38" y1="187.96" x2="373.38" y2="193.04" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="OUT"/>
<wire x1="373.38" y1="193.04" x2="370.84" y2="193.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VTCXO" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="VDD"/>
<wire x1="370.84" y1="203.2" x2="386.08" y2="203.2" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="P$2"/>
<wire x1="386.08" y1="203.2" x2="403.86" y2="203.2" width="0.1524" layer="91"/>
<wire x1="386.08" y1="198.12" x2="386.08" y2="203.2" width="0.1524" layer="91"/>
<junction x="386.08" y="203.2"/>
<label x="396.24" y="203.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PD6"/>
<wire x1="106.68" y1="129.54" x2="106.68" y2="116.84" width="0.1524" layer="91"/>
<label x="106.68" y="116.84" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="TIMEPULSE"/>
<wire x1="223.52" y1="58.42" x2="200.66" y2="58.42" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="L2" gate="G$1" pin="P$2"/>
<wire x1="154.94" y1="58.42" x2="160.02" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="P$2"/>
<wire x1="160.02" y1="58.42" x2="160.02" y2="53.34" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="P$1"/>
<wire x1="182.88" y1="53.34" x2="182.88" y2="58.42" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="P$2"/>
<wire x1="182.88" y1="58.42" x2="187.96" y2="58.42" width="0.1524" layer="91"/>
<wire x1="160.02" y1="58.42" x2="182.88" y2="58.42" width="0.1524" layer="91"/>
<junction x="160.02" y="58.42"/>
<junction x="182.88" y="58.42"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="C3" gate="G$1" pin="P$1"/>
<pinref part="U3" gate="G$1" pin="XIN"/>
<wire x1="373.38" y1="177.8" x2="373.38" y2="170.18" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="P$2"/>
<wire x1="373.38" y1="170.18" x2="373.38" y2="165.1" width="0.1524" layer="91"/>
<wire x1="373.38" y1="170.18" x2="381" y2="170.18" width="0.1524" layer="91"/>
<junction x="373.38" y="170.18"/>
</segment>
</net>
<net name="TIMEPULSE" class="0">
<segment>
<pinref part="C10" gate="G$1" pin="P$1"/>
<wire x1="391.16" y1="170.18" x2="408.94" y2="170.18" width="0.1524" layer="91"/>
<label x="396.24" y="170.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="P$2"/>
<wire x1="134.62" y1="53.34" x2="134.62" y2="58.42" width="0.1524" layer="91"/>
<pinref part="L2" gate="G$1" pin="P$1"/>
<wire x1="134.62" y1="58.42" x2="139.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="134.62" y1="58.42" x2="116.84" y2="58.42" width="0.1524" layer="91"/>
<junction x="134.62" y="58.42"/>
<label x="116.84" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="GPIO1" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="GPIO1"/>
<wire x1="375.92" y1="129.54" x2="375.92" y2="127" width="0.1524" layer="91"/>
<wire x1="375.92" y1="127" x2="401.32" y2="127" width="0.1524" layer="91"/>
<label x="393.7" y="127" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PD3"/>
<wire x1="93.98" y1="157.48" x2="81.28" y2="157.48" width="0.1524" layer="91"/>
<label x="81.28" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="GPIO0" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="GPIO0"/>
<wire x1="373.38" y1="129.54" x2="373.38" y2="121.92" width="0.1524" layer="91"/>
<wire x1="373.38" y1="121.92" x2="401.32" y2="121.92" width="0.1524" layer="91"/>
<label x="393.7" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PD2"/>
<wire x1="104.14" y1="167.64" x2="104.14" y2="180.34" width="0.1524" layer="91"/>
<label x="104.14" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="GPIO3" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="GPIO3"/>
<wire x1="365.76" y1="165.1" x2="365.76" y2="172.72" width="0.1524" layer="91"/>
<wire x1="365.76" y1="172.72" x2="350.52" y2="172.72" width="0.1524" layer="91"/>
<label x="350.52" y="172.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PD7"/>
<wire x1="109.22" y1="129.54" x2="109.22" y2="116.84" width="0.1524" layer="91"/>
<label x="109.22" y="116.84" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="GPIO2" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="GPIO2"/>
<wire x1="368.3" y1="165.1" x2="368.3" y2="175.26" width="0.1524" layer="91"/>
<wire x1="368.3" y1="175.26" x2="350.52" y2="175.26" width="0.1524" layer="91"/>
<label x="350.52" y="175.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="PB0"/>
<wire x1="111.76" y1="129.54" x2="111.76" y2="116.84" width="0.1524" layer="91"/>
<label x="111.76" y="116.84" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U1" gate="A" pin="AREF"/>
<wire x1="132.08" y1="147.32" x2="160.02" y2="147.32" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="P$2"/>
<wire x1="160.02" y1="147.32" x2="160.02" y2="144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U1" gate="A" pin="PC5"/>
<wire x1="114.3" y1="167.64" x2="114.3" y2="180.34" width="0.1524" layer="91"/>
<label x="114.3" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U1" gate="A" pin="PC4"/>
<wire x1="116.84" y1="167.64" x2="116.84" y2="180.34" width="0.1524" layer="91"/>
<label x="116.84" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="ADC3" class="0">
<segment>
<pinref part="U1" gate="A" pin="PC3"/>
<wire x1="119.38" y1="167.64" x2="119.38" y2="180.34" width="0.1524" layer="91"/>
<label x="119.38" y="175.26" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U1" gate="A" pin="PD4"/>
<wire x1="93.98" y1="154.94" x2="91.44" y2="154.94" width="0.1524" layer="91"/>
<wire x1="91.44" y1="154.94" x2="91.44" y2="203.2" width="0.1524" layer="91"/>
<pinref part="LED1" gate="G$1" pin="ANODE"/>
<wire x1="91.44" y1="203.2" x2="50.8" y2="203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="P$1"/>
<pinref part="U1" gate="A" pin="PC2"/>
<wire x1="121.92" y1="167.64" x2="121.92" y2="170.18" width="0.1524" layer="91"/>
<wire x1="121.92" y1="170.18" x2="134.62" y2="170.18" width="0.1524" layer="91"/>
<wire x1="134.62" y1="170.18" x2="134.62" y2="167.64" width="0.1524" layer="91"/>
<wire x1="134.62" y1="167.64" x2="165.1" y2="167.64" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
