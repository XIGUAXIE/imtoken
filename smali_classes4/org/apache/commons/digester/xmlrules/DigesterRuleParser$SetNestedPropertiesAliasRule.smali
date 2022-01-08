.class public Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesAliasRule;
.super Lorg/apache/commons/digester/Rule;
.source "DigesterRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetNestedPropertiesAliasRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesAliasRule;->this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;

    .line 855
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "attr-name"

    .line 864
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prop-name"

    .line 865
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 867
    iget-object v1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesAliasRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v1}, Lorg/apache/commons/digester/Digester;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/digester/SetNestedPropertiesRule;

    .line 868
    invoke-virtual {v1, v0, p1}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->addAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
