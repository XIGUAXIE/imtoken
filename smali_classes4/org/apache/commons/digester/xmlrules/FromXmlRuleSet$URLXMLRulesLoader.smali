.class Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$URLXMLRulesLoader;
.super Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$XMLRulesLoader;
.source "FromXmlRuleSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLXMLRulesLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;Ljava/net/URL;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$URLXMLRulesLoader;->this$0:Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$XMLRulesLoader;-><init>(Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$1;)V

    .line 193
    iput-object p2, p0, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$URLXMLRulesLoader;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public loadRules()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/xmlrules/XmlLoadException;
        }
    .end annotation

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$URLXMLRulesLoader;->this$0:Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;

    invoke-static {v0}, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;->access$100(Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;)Lorg/apache/commons/digester/Digester;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$URLXMLRulesLoader;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/digester/Digester;->parse(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lorg/apache/commons/digester/xmlrules/XmlLoadException;

    invoke-direct {v1, v0}, Lorg/apache/commons/digester/xmlrules/XmlLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
