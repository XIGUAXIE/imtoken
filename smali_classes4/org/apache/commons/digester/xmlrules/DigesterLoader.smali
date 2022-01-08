.class public Lorg/apache/commons/digester/xmlrules/DigesterLoader;
.super Ljava/lang/Object;
.source "DigesterLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDigester(Ljava/net/URL;)Lorg/apache/commons/digester/Digester;
    .locals 1

    .line 78
    new-instance v0, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;-><init>(Ljava/net/URL;)V

    .line 79
    new-instance p0, Lorg/apache/commons/digester/Digester;

    invoke-direct {p0}, Lorg/apache/commons/digester/Digester;-><init>()V

    .line 80
    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/Digester;->addRuleSet(Lorg/apache/commons/digester/RuleSet;)V

    return-object p0
.end method

.method public static createDigester(Ljava/net/URL;Lorg/apache/commons/digester/Digester;)Lorg/apache/commons/digester/Digester;
    .locals 1

    .line 96
    new-instance v0, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;-><init>(Ljava/net/URL;Lorg/apache/commons/digester/Digester;)V

    .line 97
    new-instance p0, Lorg/apache/commons/digester/Digester;

    invoke-direct {p0}, Lorg/apache/commons/digester/Digester;-><init>()V

    .line 98
    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/Digester;->addRuleSet(Lorg/apache/commons/digester/RuleSet;)V

    return-object p0
.end method

.method public static createDigester(Lorg/xml/sax/InputSource;)Lorg/apache/commons/digester/Digester;
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;-><init>(Lorg/xml/sax/InputSource;)V

    .line 51
    new-instance p0, Lorg/apache/commons/digester/Digester;

    invoke-direct {p0}, Lorg/apache/commons/digester/Digester;-><init>()V

    .line 52
    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/Digester;->addRuleSet(Lorg/apache/commons/digester/RuleSet;)V

    return-object p0
.end method

.method public static createDigester(Lorg/xml/sax/InputSource;Lorg/apache/commons/digester/Digester;)Lorg/apache/commons/digester/Digester;
    .locals 1

    .line 66
    new-instance v0, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;-><init>(Lorg/xml/sax/InputSource;Lorg/apache/commons/digester/Digester;)V

    .line 67
    new-instance p0, Lorg/apache/commons/digester/Digester;

    invoke-direct {p0}, Lorg/apache/commons/digester/Digester;-><init>()V

    .line 68
    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/Digester;->addRuleSet(Lorg/apache/commons/digester/RuleSet;)V

    return-object p0
.end method

.method public static load(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lorg/apache/commons/digester/xmlrules/DigesterLoader;->createDigester(Ljava/net/URL;)Lorg/apache/commons/digester/Digester;

    move-result-object p0

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 132
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/digester/Digester;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/digester/xmlrules/XmlLoadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 137
    new-instance p1, Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;

    invoke-virtual {p0}, Lorg/apache/commons/digester/xmlrules/XmlLoadException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static load(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;
        }
    .end annotation

    .line 206
    invoke-static {p0}, Lorg/apache/commons/digester/xmlrules/DigesterLoader;->createDigester(Ljava/net/URL;)Lorg/apache/commons/digester/Digester;

    move-result-object p0

    .line 207
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 208
    invoke-virtual {p0, p3}, Lorg/apache/commons/digester/Digester;->push(Ljava/lang/Object;)V

    .line 210
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/digester/Digester;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/digester/xmlrules/XmlLoadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 215
    new-instance p1, Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;

    invoke-virtual {p0}, Lorg/apache/commons/digester/xmlrules/XmlLoadException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static load(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lorg/apache/commons/digester/xmlrules/DigesterLoader;->createDigester(Ljava/net/URL;)Lorg/apache/commons/digester/Digester;

    move-result-object p0

    .line 160
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 162
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/digester/Digester;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/digester/xmlrules/XmlLoadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 167
    new-instance p1, Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;

    invoke-virtual {p0}, Lorg/apache/commons/digester/xmlrules/XmlLoadException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static load(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;
        }
    .end annotation

    .line 240
    invoke-static {p0}, Lorg/apache/commons/digester/xmlrules/DigesterLoader;->createDigester(Ljava/net/URL;)Lorg/apache/commons/digester/Digester;

    move-result-object p0

    .line 241
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 242
    invoke-virtual {p0, p3}, Lorg/apache/commons/digester/Digester;->push(Ljava/lang/Object;)V

    .line 244
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/digester/Digester;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/digester/xmlrules/XmlLoadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 249
    new-instance p1, Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;

    invoke-virtual {p0}, Lorg/apache/commons/digester/xmlrules/XmlLoadException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static load(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;
        }
    .end annotation

    .line 114
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/digester/xmlrules/DigesterLoader;->load(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URL;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/commons/digester/xmlrules/DigesterLoadingException;
        }
    .end annotation

    .line 188
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/digester/xmlrules/DigesterLoader;->load(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
