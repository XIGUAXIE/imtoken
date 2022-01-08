.class public Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertiesRuleFactory;
.super Lorg/apache/commons/digester/AbstractObjectCreationFactory;
.source "DigesterRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetPropertiesRuleFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertiesRuleFactory;->this$0:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;

    invoke-direct {p0}, Lorg/apache/commons/digester/AbstractObjectCreationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createObject(Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 0

    .line 746
    new-instance p1, Lorg/apache/commons/digester/SetPropertiesRule;

    invoke-direct {p1}, Lorg/apache/commons/digester/SetPropertiesRule;-><init>()V

    return-object p1
.end method
