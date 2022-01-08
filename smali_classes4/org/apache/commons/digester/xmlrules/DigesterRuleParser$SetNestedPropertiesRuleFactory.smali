.class public Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesRuleFactory;
.super Lorg/apache/commons/digester/AbstractObjectCreationFactory;
.source "DigesterRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetNestedPropertiesRuleFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesRuleFactory;->this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;

    invoke-direct {p0}, Lorg/apache/commons/digester/AbstractObjectCreationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createObject(Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 1

    const-string v0, "allow-unknown-child-elements"

    .line 768
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 770
    new-instance v0, Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-direct {v0}, Lorg/apache/commons/digester/SetNestedPropertiesRule;-><init>()V

    .line 771
    invoke-virtual {v0, p1}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->setAllowUnknownChildElements(Z)V

    return-object v0
.end method
