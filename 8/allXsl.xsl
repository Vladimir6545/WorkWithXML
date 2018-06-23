<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:template match="/">
    
  <html>
  <body>
  <h2>Объекты</h2>
    <br/>
    <h4>Сортировка по дате постройки</h4>
    
  <table border="1">
    <tr style="background-color: red;">
      <td>id</td>
      <td>Название объекта</td>
      <td>Адрес</td>
      <td>Тип</td>
      <td>Дата постройки</td>
      <td>Этаж</td>
      <td>Количество комнат</td>
      <td>Цена</td>
    </tr>
    
   <xsl:for-each select="listObjects/listObject">
     <xsl:sort select="dateOfConstruction"/>
        <tr>
        <td><xsl:value-of select="id"/></td>
        <td><xsl:value-of select="nameObject"/></td>
        <td><xsl:value-of select="adress"/></td>
        <td><xsl:value-of select="type"/></td>
        <td><xsl:value-of select="dateOfConstruction"/></td>
        <td><xsl:value-of select="numberOfStoreys"/></td>
        <td><xsl:value-of select="numberOfRooms"/></td>
        <td><xsl:value-of select="cost"/></td>
    </tr>
      </xsl:for-each>
  </table>

    <table border="1">
      <tr style="background-color: red;">
        <td>id</td>
        <td>Название объекта</td>
        <td>Адрес</td>
        <td>Тип</td>
        <td>Дата постройки</td>
        <td>Этаж</td>
        <td>Количество комнат</td>
        <td>Цена</td>
      </tr>

      <xsl:for-each select="listObjects/listObject">
        <xsl:sort select="numberOfRooms"/>
        <tr>
          <td>
            <xsl:value-of select="id"/>
          </td>
          <td>
            <xsl:value-of select="nameObject"/>
          </td>
          <td>
            <xsl:value-of select="adress"/>
          </td>
          <td>
            <xsl:value-of select="type"/>
          </td>
          <td>
            <xsl:value-of select="dateOfConstruction"/>
          </td>
          <td>
            <xsl:value-of select="numberOfStoreys"/>
          </td>
          <td>
            <xsl:value-of select="numberOfRooms"/>
          </td>
          <td>
            <xsl:value-of select="cost"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
    
  </body>
  </html>
    
</xsl:template>
</xsl:stylesheet> 