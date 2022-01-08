.class abstract Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$XMLRulesLoader;
.super Ljava/lang/Object;
.source "FromXmlRuleSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "XMLRulesLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$1;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Lorg/apache/commons/digester/xmlrules/FromXmlRuleSet$XMLRulesLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract loadRules()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/xmlrules/XmlLoadException;
        }
    .end annotation
.end method
