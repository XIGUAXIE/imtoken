.class public Lorg/apache/commons/digester/ParserFeatureSetterFactory;
.super Ljava/lang/Object;
.source "ParserFeatureSetterFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static isXercesUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.xerces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lorg/apache/commons/digester/ParserFeatureSetterFactory;->isXercesUsed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Lorg/apache/commons/digester/ParserFeatureSetterFactory;->isXercesUsed:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newSAXParser(Ljava/util/Properties;)Ljavax/xml/parsers/SAXParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 81
    sget-boolean v0, Lorg/apache/commons/digester/ParserFeatureSetterFactory;->isXercesUsed:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0}, Lorg/apache/commons/digester/parser/XercesParser;->newSAXParser(Ljava/util/Properties;)Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/digester/parser/GenericParser;->newSAXParser(Ljava/util/Properties;)Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    return-object p0
.end method
