.class public Lorg/apache/commons/digester/plugins/strategies/LoaderSetProperties;
.super Lorg/apache/commons/digester/plugins/RuleLoader;
.source "LoaderSetProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/digester/plugins/RuleLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public addRules(Lorg/apache/commons/digester/Digester;Ljava/lang/String;)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderSetProperties loading rules for plugin at path ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 51
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/commons/digester/Digester;->addSetProperties(Ljava/lang/String;)V

    return-void
.end method
