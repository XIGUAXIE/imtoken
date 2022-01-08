.class Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$BeanPropertySetterRuleFactory;
.super Lorg/apache/commons/digester/AbstractObjectCreationFactory;
.source "DigesterRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeanPropertySetterRuleFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;


# direct methods
.method private constructor <init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$BeanPropertySetterRuleFactory;->this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;

    invoke-direct {p0}, Lorg/apache/commons/digester/AbstractObjectCreationFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$1;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$BeanPropertySetterRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    return-void
.end method


# virtual methods
.method public createObject(Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "propertyname"

    .line 536
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 540
    new-instance p1, Lorg/apache/commons/digester/BeanPropertySetterRule;

    invoke-direct {p1}, Lorg/apache/commons/digester/BeanPropertySetterRule;-><init>()V

    goto :goto_0

    .line 542
    :cond_0
    new-instance v0, Lorg/apache/commons/digester/BeanPropertySetterRule;

    invoke-direct {v0, p1}, Lorg/apache/commons/digester/BeanPropertySetterRule;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
