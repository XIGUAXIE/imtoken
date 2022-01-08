.class public Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$ObjectParamRuleFactory;
.super Lorg/apache/commons/digester/AbstractObjectCreationFactory;
.source "DigesterRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ObjectParamRuleFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$ObjectParamRuleFactory;->this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;

    invoke-direct {p0}, Lorg/apache/commons/digester/AbstractObjectCreationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createObject(Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "paramnumber"

    .line 651
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "attrname"

    .line 652
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 653
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    .line 654
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_2

    .line 665
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez p1, :cond_0

    .line 667
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 669
    :cond_0
    invoke-static {p1, v2}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-nez v1, :cond_1

    .line 673
    new-instance v1, Lorg/apache/commons/digester/ObjectParamRule;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/digester/ObjectParamRule;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    .line 675
    :cond_1
    new-instance v2, Lorg/apache/commons/digester/ObjectParamRule;

    invoke-direct {v2, v0, v1, p1}, Lorg/apache/commons/digester/ObjectParamRule;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v1, v2

    :goto_1
    return-object v1

    .line 660
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attribute \'type\' is required."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
