.class public Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;
.super Lorg/apache/commons/digester/plugins/RuleFinder;
.source "FinderFromDfltClass.java"


# static fields
.field public static DFLT_METHOD_NAME:Ljava/lang/String; = "addRules"

.field public static DFLT_RULECLASS_SUFFIX:Ljava/lang/String; = "RuleInfo"


# instance fields
.field private methodName:Ljava/lang/String;

.field private rulesClassSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    sget-object v0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->DFLT_RULECLASS_SUFFIX:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->DFLT_METHOD_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/digester/plugins/RuleFinder;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->rulesClassSuffix:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->methodName:Ljava/lang/String;

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

    .line 75
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->rulesClassSuffix:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object p2, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->methodName:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 86
    sget-object p2, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->DFLT_METHOD_NAME:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->methodName:Ljava/lang/String;

    .line 89
    :cond_0
    new-instance p2, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;

    iget-object p3, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltClass;->methodName:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Lorg/apache/commons/digester/plugins/strategies/LoaderFromClass;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p2

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
