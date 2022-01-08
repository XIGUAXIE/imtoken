.class public Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltMethod;
.super Lorg/apache/commons/digester/plugins/RuleFinder;
.source "FinderFromDfltMethod.java"


# static fields
.field public static DFLT_METHOD_NAME:Ljava/lang/String; = "addRules"


# instance fields
.field private methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltMethod;->DFLT_METHOD_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/digester/plugins/RuleFinder;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltMethod;->methodName:Ljava/lang/String;

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

    .line 72
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltMethod;->methodName:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;->locateMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    new-instance p3, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;

    invoke-direct {p3, p2, p1}, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-object p3
.end method
