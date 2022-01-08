.class public Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltResource;
.super Lorg/apache/commons/digester/plugins/RuleFinder;
.source "FinderFromDfltResource.java"


# static fields
.field public static DFLT_RESOURCE_SUFFIX:Ljava/lang/String; = "RuleInfo.xml"


# instance fields
.field private resourceSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltResource;->DFLT_RESOURCE_SUFFIX:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltResource;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/digester/plugins/RuleFinder;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltResource;->resourceSuffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findLoader(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;Ljava/util/Properties;)Lorg/apache/commons/digester/plugins/RuleLoader;
    .locals 3
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

    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/digester/plugins/strategies/FinderFromDfltResource;->resourceSuffix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 78
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    invoke-static {p1, p2, v0, p3}, Lorg/apache/commons/digester/plugins/strategies/FinderFromResource;->loadRules(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/digester/plugins/RuleLoader;

    move-result-object p1

    return-object p1
.end method
