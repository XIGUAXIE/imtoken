.class public Lorg/apache/commons/digester/plugins/strategies/FinderFromMethod;
.super Lorg/apache/commons/digester/plugins/RuleFinder;
.source "FinderFromMethod.java"


# static fields
.field public static DFLT_METHOD_ATTR:Ljava/lang/String; = "method"


# instance fields
.field private methodAttr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/commons/digester/plugins/strategies/FinderFromMethod;->DFLT_METHOD_ATTR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/digester/plugins/strategies/FinderFromMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/digester/plugins/RuleFinder;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromMethod;->methodAttr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findLoader(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;Ljava/util/Properties;)Lorg/apache/commons/digester/plugins/RuleLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Properties;",
            ")",
            "Lorg/apache/commons/digester/plugins/RuleLoader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/plugins/PluginException;
        }
    .end annotation

    .line 69
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromMethod;->methodAttr:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    new-instance p3, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;

    invoke-direct {p3, p2, p1}, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p3
.end method
