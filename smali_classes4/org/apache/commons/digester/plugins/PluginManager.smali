.class public Lorg/apache/commons/digester/plugins/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# instance fields
.field private declarationsByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/digester/plugins/Declaration;",
            ">;"
        }
    .end annotation
.end field

.field private declarationsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/digester/plugins/Declaration;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/digester/plugins/PluginManager;

.field private pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;


# direct methods
.method public constructor <init>(Lorg/apache/commons/digester/plugins/PluginContext;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginManager;->declarationsByClass:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginManager;->declarationsById:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginManager;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/plugins/PluginManager;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginManager;->declarationsByClass:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginManager;->declarationsById:Ljava/util/HashMap;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginManager;->parent:Lorg/apache/commons/digester/plugins/PluginManager;

    .line 75
    iget-object p1, p1, Lorg/apache/commons/digester/plugins/PluginManager;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginManager;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    return-void
.end method


# virtual methods
.method public addDeclaration(Lorg/apache/commons/digester/plugins/Declaration;)V
    .locals 6

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Lorg/apache/commons/digester/plugins/LogUtils;->getLogger(Lorg/apache/commons/digester/Digester;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    .line 93
    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/Declaration;->getPluginClass()Ljava/lang/Class;

    move-result-object v2

    .line 94
    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/Declaration;->getId()Ljava/lang/String;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lorg/apache/commons/digester/plugins/PluginManager;->declarationsByClass:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 99
    iget-object v4, p0, Lorg/apache/commons/digester/plugins/PluginManager;->declarationsById:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexing plugin-id ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> class ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public findLoader(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Properties;)Lorg/apache/commons/digester/plugins/RuleLoader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Ljava/lang/String;",
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

    .line 155
    invoke-static {p1}, Lorg/apache/commons/digester/plugins/LogUtils;->getLogger(Lorg/apache/commons/digester/Digester;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    const-string v2, "scanning ruleFinders to locate loader.."

    .line 157
    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 159
    iget-object v2, p0, Lorg/apache/commons/digester/plugins/PluginManager;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v2}, Lorg/apache/commons/digester/plugins/PluginContext;->getRuleFinders()Ljava/util/List;

    move-result-object v2

    .line 162
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 163
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/digester/plugins/RuleFinder;

    if-eqz v1, :cond_0

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking finder of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 169
    :cond_0
    invoke-virtual {v3, p1, p3, p4}, Lorg/apache/commons/digester/plugins/RuleFinder;->findLoader(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;Ljava/util/Properties;)Lorg/apache/commons/digester/plugins/RuleLoader;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/commons/digester/plugins/PluginException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const-string p1, "scanned ruleFinders."

    .line 179
    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-object v3

    :catch_0
    move-exception p1

    .line 173
    new-instance p4, Lorg/apache/commons/digester/plugins/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate plugin rules for plugin with id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and class ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/PluginException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/PluginException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p4, p2, p1}, Lorg/apache/commons/digester/plugins/PluginException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
.end method

.method public getDeclarationByClass(Ljava/lang/String;)Lorg/apache/commons/digester/plugins/Declaration;
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginManager;->declarationsByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/digester/plugins/Declaration;

    if-nez v0, :cond_0

    .line 116
    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginManager;->parent:Lorg/apache/commons/digester/plugins/PluginManager;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1, p1}, Lorg/apache/commons/digester/plugins/PluginManager;->getDeclarationByClass(Ljava/lang/String;)Lorg/apache/commons/digester/plugins/Declaration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeclarationById(Ljava/lang/String;)Lorg/apache/commons/digester/plugins/Declaration;
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginManager;->declarationsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/digester/plugins/Declaration;

    if-nez v0, :cond_0

    .line 133
    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginManager;->parent:Lorg/apache/commons/digester/plugins/PluginManager;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1, p1}, Lorg/apache/commons/digester/plugins/PluginManager;->getDeclarationById(Ljava/lang/String;)Lorg/apache/commons/digester/plugins/Declaration;

    move-result-object v0

    :cond_0
    return-object v0
.end method
