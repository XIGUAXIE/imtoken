.class public Lorg/apache/commons/digester/parser/XercesParser;
.super Ljava/lang/Object;
.source "XercesParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = null

.field private static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static XERCES_DYNAMIC:Ljava/lang/String;

.field protected static XERCES_SCHEMA:Ljava/lang/String;

.field protected static log:Lorg/apache/commons/logging/Log;

.field protected static version:F

.field protected static versionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.commons.digester.Digester.sax"

    .line 54
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/digester/parser/XercesParser;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 68
    sput-object v0, Lorg/apache/commons/digester/parser/XercesParser;->JAXP_SCHEMA_LANGUAGE:Ljava/lang/String;

    const-string v0, "http://apache.org/xml/features/validation/dynamic"

    .line 75
    sput-object v0, Lorg/apache/commons/digester/parser/XercesParser;->XERCES_DYNAMIC:Ljava/lang/String;

    const-string v0, "http://apache.org/xml/features/validation/schema"

    .line 82
    sput-object v0, Lorg/apache/commons/digester/parser/XercesParser;->XERCES_SCHEMA:Ljava/lang/String;

    const/4 v0, 0x0

    .line 95
    sput-object v0, Lorg/apache/commons/digester/parser/XercesParser;->versionNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureOldXerces(Ljavax/xml/parsers/SAXParser;Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "schemaLocation"

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "schemaLanguage"

    .line 166
    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    sget-object v1, Lorg/apache/commons/digester/parser/XercesParser;->JAXP_SCHEMA_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ljavax/xml/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 171
    invoke-virtual {p0, p1, v0}, Ljavax/xml/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    sget-object v0, Lorg/apache/commons/digester/parser/XercesParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXNotRecognizedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not supported."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static configureXerces(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 196
    sget-object v0, Lorg/apache/commons/digester/parser/XercesParser;->XERCES_DYNAMIC:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 197
    sget-object v0, Lorg/apache/commons/digester/parser/XercesParser;->XERCES_SCHEMA:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method private static getXercesVersion()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "org.apache.xerces.impl.Version"

    .line 107
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVersion"

    const/4 v2, 0x0

    .line 110
    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "."

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "1.0"

    :goto_0
    return-object v0
.end method

.method public static newSAXParser(Ljava/util/Properties;)Ljavax/xml/parsers/SAXParser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "SAXParserFactory"

    .line 133
    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/SAXParserFactory;

    .line 136
    sget-object v1, Lorg/apache/commons/digester/parser/XercesParser;->versionNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 137
    invoke-static {}, Lorg/apache/commons/digester/parser/XercesParser;->getXercesVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/digester/parser/XercesParser;->versionNumber:Ljava/lang/String;

    .line 138
    new-instance v1, Ljava/lang/Float;

    sget-object v2, Lorg/apache/commons/digester/parser/XercesParser;->versionNumber:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lorg/apache/commons/digester/parser/XercesParser;->version:F

    .line 142
    :cond_0
    sget v1, Lorg/apache/commons/digester/parser/XercesParser;->version:F

    float-to-double v1, v1

    const-wide v3, 0x4000cccccccccccdL    # 2.1

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 144
    invoke-static {v0}, Lorg/apache/commons/digester/parser/XercesParser;->configureXerces(Ljavax/xml/parsers/SAXParserFactory;)V

    .line 145
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    return-object p0

    .line 147
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 148
    invoke-static {v0, p0}, Lorg/apache/commons/digester/parser/XercesParser;->configureOldXerces(Ljavax/xml/parsers/SAXParser;Ljava/util/Properties;)V

    return-object v0
.end method
