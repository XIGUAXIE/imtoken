.class public Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$CallParamRuleFactory;
.super Lorg/apache/commons/digester/AbstractObjectCreationFactory;
.source "DigesterRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallParamRuleFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$CallParamRuleFactory;->this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;

    invoke-direct {p0}, Lorg/apache/commons/digester/AbstractObjectCreationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createObject(Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 4

    const-string v0, "paramnumber"

    .line 615
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "attrname"

    .line 616
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from-stack"

    .line 617
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stack-index"

    .line 618
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    .line 623
    new-instance v1, Lorg/apache/commons/digester/CallParamRule;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/digester/CallParamRule;-><init>(II)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 626
    new-instance v1, Lorg/apache/commons/digester/CallParamRule;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/digester/CallParamRule;-><init>(IZ)V

    goto :goto_0

    .line 629
    :cond_1
    new-instance v1, Lorg/apache/commons/digester/CallParamRule;

    invoke-direct {v1, v0}, Lorg/apache/commons/digester/CallParamRule;-><init>(I)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 633
    new-instance p1, Lorg/apache/commons/digester/CallParamRule;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/digester/CallParamRule;-><init>(ILjava/lang/String;)V

    move-object v1, p1

    :goto_0
    return-object v1

    .line 636
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attributes from-stack and attrname cannot both be present."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
