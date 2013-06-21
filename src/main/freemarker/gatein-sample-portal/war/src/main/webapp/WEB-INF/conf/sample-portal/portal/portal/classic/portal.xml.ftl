<?xml version="1.0" encoding="ISO-8859-1"?>
<!--

    Copyright (C) 2009 eXo Platform SAS.

    This is free software; you can redistribute it and/or modify it
    under the terms of the GNU Lesser General Public License as
    published by the Free Software Foundation; either version 2.1 of
    the License, or (at your option) any later version.

    This software is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this software; if not, write to the Free
    Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
    02110-1301 USA, or see the FSF site: http://www.fsf.org.

-->

<portal-config
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.gatein.org/xml/ns/gatein_objects_1_4 http://www.gatein.org/xml/ns/gatein_objects_1_4"
    xmlns="http://www.gatein.org/xml/ns/gatein_objects_1_4">
  <portal-name>classic</portal-name>
  <label>Classic</label>
  <description>Sample Portal</description>
  <locale>en</locale>
  <access-permissions>Everyone</access-permissions>
  <edit-permission>*:/platform/administrators</edit-permission>
<#if compatibility.portal.projectNameShort == "GateIn">
  <skin>Default</skin>
<#else>
  <skin>JppSkin</skin>
</#if>
  <properties>
    <entry key="sessionAlive">onDemand</entry>
    <entry key="showPortletInfo">0</entry>
  </properties>
  <portal-layout>
    <portlet-application>
      <portlet>
        <application-ref>web</application-ref>
        <portlet-ref>BannerPortlet</portlet-ref>
        <preferences>
          <preference>
            <name>template</name>
            <value>par:/groovy/groovy/webui/component/UIBannerPortlet.gtmpl</value>
            <read-only>false</read-only>
          </preference>
        </preferences>
      </portlet>
      <access-permissions>Everyone</access-permissions>
      <show-info-bar>false</show-info-bar>
    </portlet-application>

    <portlet-application>
      <portlet>
        <application-ref>web</application-ref>
        <portlet-ref>NavigationPortlet</portlet-ref>
        <preferences>
          <preference>
            <name>useAJAX</name>
            <value>false</value>
            <read-only>false</read-only>
          </preference>
        </preferences>
      </portlet>
      <access-permissions>Everyone</access-permissions>
      <show-info-bar>false</show-info-bar>
    </portlet-application>

    <portlet-application>
      <portlet>
        <application-ref>web</application-ref>
        <portlet-ref>BreadcumbsPortlet</portlet-ref>
        <preferences>
          <preference>
            <name>useAJAX</name>
            <value>false</value>
            <read-only>false</read-only>
          </preference>
        </preferences>
      </portlet>
      <access-permissions>Everyone</access-permissions>
      <show-info-bar>false</show-info-bar>
    </portlet-application>

    <page-body></page-body>

    <portlet-application>
      <portlet>
        <application-ref>web</application-ref>
        <portlet-ref>FooterPortlet</portlet-ref>
        <preferences>
          <preference>
            <name>template</name>
            <value>par:/groovy/groovy/webui/component/UIFooterPortlet.gtmpl</value>
            <read-only>false</read-only>
          </preference>
        </preferences>
      </portlet>
      <access-permissions>Everyone</access-permissions>
      <show-info-bar>false</show-info-bar>
    </portlet-application>

  </portal-layout>

</portal-config>
