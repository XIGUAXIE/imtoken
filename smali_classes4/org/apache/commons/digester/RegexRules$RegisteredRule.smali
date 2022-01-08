.class Lorg/apache/commons/digester/RegexRules$RegisteredRule;
.super Ljava/lang/Object;
.source "RegexRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/RegexRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisteredRule"
.end annotation


# instance fields
.field pattern:Ljava/lang/String;

.field rule:Lorg/apache/commons/digester/Rule;

.field final synthetic this$0:Lorg/apache/commons/digester/RegexRules;


# direct methods
.method constructor <init>(Lorg/apache/commons/digester/RegexRules;Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/apache/commons/digester/RegexRules$RegisteredRule;->this$0:Lorg/apache/commons/digester/RegexRules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lorg/apache/commons/digester/RegexRules$RegisteredRule;->pattern:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lorg/apache/commons/digester/RegexRules$RegisteredRule;->rule:Lorg/apache/commons/digester/Rule;

    return-void
.end method
