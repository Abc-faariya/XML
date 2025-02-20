<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <!-- Define basic template and styling -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Stationary Products</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 40px;
                        background-color: #f4f4f4;
                        color: #333;
                    }
                    h1 {
                        text-align: center;
                        color: #2c3e50;
                    }
                    .product-list {
                        width: 100%;
                        margin-top: 20px;
                    }
                    .product {
                        background-color: #ffffff;
                        border: 1px solid #ddd;
                        padding: 20px;
                        margin-bottom: 20px;
                        border-radius: 5px;
                        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                    }
                    .product-name {
                        font-size: 1.6em;
                        color: #2c3e50;
                    }
                    .price {
                        color: #e74c3c;
                        font-size: 1.2em;
                    }
                    .description {
                        font-size: 1em;
                        margin-top: 10px;
                        color: #7f8c8d;
                    }
                    .category {
                        font-weight: bold;
                        margin-top: 10px;
                        color: #16a085;
                    }
                    .availability {
                        margin-top: 10px;
                        font-size: 1.1em;
                    }
                    .availability.in-stock {
                        color: #27ae60;
                    }
                    .availability.out-of-stock {
                        color: #c0392b;
                    }
                </style>
            </head>
            <body>
                <h1>Stationary Products</h1>
                <div class="product-list">
                    <!-- Loop through each product in the XML data -->
                    <xsl:for-each select="stationary/product">
                        <div class="product">
                            <div class="product-name">
                                <xsl:value-of select="productname"/>
                            </div>
                            <div class="price">
                                $<xsl:value-of select="price"/>
                            </div>
                            <div class="description">
                                <xsl:value-of select="description"/>
                            </div>
                            <div class="category">
                                <xsl:value-of select="category"/>
                            </div>
                            <div class="availability">
                                <xsl:value-of select="availability"/>
                                <xsl:if test="availability = 'In Stock'">
                                    <span class="in-stock">(Available)</span>
                                </xsl:if>
                                <xsl:if test="availability = 'Out of Stock'">
                                    <span class="out-of-stock">(Out of Stock)</span>
                                </xsl:if>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

