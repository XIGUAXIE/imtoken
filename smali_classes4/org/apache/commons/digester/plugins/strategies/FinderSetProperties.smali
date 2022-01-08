.class public Lorg/apache/commons/digester/plugins/strategies/FinderSetProperties;
.super Lorg/apache/commons/digester/plugins/RuleFinder;
.source "FinderSetProperties.java"


# static fields
.field public static DFLT_FALSEVAL:Ljava/lang/String; = "false"

.field public static DFLT_PROPS_ATTR:Ljava/lang/String; = "setprops"


# instance fields
.field private falseval:Ljava/lang/String;

.field private propsAttr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    sget-object v0, Lorg/apache/commons/digester/plugins/strategies/FinderSetProperties;->DFLT_PROPS_ATTR:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/digester/plugins/strategies/FinderSetProperties;->DFLT_FALSEVAL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/digester/plugins/strategies/FinderSetProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/apache/commons/digester/plugins/RuleFinder;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderSetProperties;->propsAttr:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/apache/commons/digester/plugins/strategies/FinderSetProperties;->falseval:Ljava/lang/String;

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

    .line 88
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/strategies/FinderSetProperties;->propsAttr:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p2, p0, Lorg/apache/commons/digester/plugins/strategies/FinderSetProperties;->falseval:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_0
    new-instance p1, Lorg/apache/commons/digester/plugins/strategies/LoaderSetProperties;

    invoke-direct {p1}, Lorg/apache/commons/digester/plugins/strategies/LoaderSetProperties;-><init>()V

    return-object p1
.end method
