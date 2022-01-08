.class public Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;
.super Lorg/apache/commons/digester/plugins/RuleFinder;
.source "FinderFromClass.java"


# static fields
.field public static DFLT_METHOD_ATTR:Ljava/lang/String; = "method"

.field public static DFLT_METHOD_NAME:Ljava/lang/String; = "addRules"

.field public static DFLT_RULECLASS_ATTR:Ljava/lang/String; = "ruleclass"


# instance fields
.field private dfltMethodName:Ljava/lang/String;

.field private methodAttr:Ljava/lang/String;

.field private ruleClassAttr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 46
    sget-object v0, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->DFLT_RULECLASS_ATTR:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->DFLT_METHOD_ATTR:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->DFLT_METHOD_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/digester/plugins/RuleFinder;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->ruleClassAttr:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->methodAttr:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->dfltMethodName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findLoader(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;Ljava/util/Properties;)Lorg/apache/commons/digester/plugins/RuleLoader;
    .locals 2
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

    .line 96
    iget-object p2, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->ruleClassAttr:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->methodAttr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->dfltMethodName:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    .line 112
    sget-object v0, Lorg/apache/commons/digester/plugins/strategies/FinderFromClass;->DFLT_METHOD_NAME:Ljava/lang/String;

    .line 118
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    new-instance p2, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 121
    new-instance p3, Lorg/apache/commons/digester/plugins/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/apache/commons/digester/plugins/PluginException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
