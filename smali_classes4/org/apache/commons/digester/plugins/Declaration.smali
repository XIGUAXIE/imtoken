.class public Lorg/apache/commons/digester/plugins/Declaration;
.super Ljava/lang/Object;
.source "Declaration.java"


# instance fields
.field private id:Ljava/lang/String;

.field private initialized:Z

.field private pluginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private pluginClassName:Ljava/lang/String;

.field private properties:Ljava/util/Properties;

.field private ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->properties:Ljava/util/Properties;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->initialized:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    .line 72
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClass:Ljava/lang/Class;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/digester/plugins/RuleLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/plugins/RuleLoader;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->properties:Ljava/util/Properties;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->initialized:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    .line 82
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClass:Ljava/lang/Class;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClassName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->properties:Ljava/util/Properties;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->initialized:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    .line 65
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public configure(Lorg/apache/commons/digester/Digester;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/plugins/PluginException;
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "configure being called!"

    .line 205
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 208
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->initialized:Z

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/digester/plugins/RuleLoader;->addRules(Lorg/apache/commons/digester/Digester;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 209
    :cond_2
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginAssertionFailure;

    const-string p2, "Not initialized."

    invoke-direct {p1, p2}, Lorg/apache/commons/digester/plugins/PluginAssertionFailure;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClass:Ljava/lang/Class;

    return-object v0
.end method

.method public init(Lorg/apache/commons/digester/Digester;Lorg/apache/commons/digester/plugins/PluginManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/plugins/PluginException;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "init being called!"

    .line 146
    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 149
    :cond_0
    iget-boolean v2, p0, Lorg/apache/commons/digester/plugins/Declaration;->initialized:Z

    if-nez v2, :cond_5

    .line 153
    iget-object v2, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClass:Ljava/lang/Class;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClassName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 156
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    new-instance p2, Lorg/apache/commons/digester/plugins/PluginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/digester/plugins/PluginException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 164
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    if-nez v2, :cond_2

    const-string v2, "Searching for ruleloader..."

    .line 167
    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 168
    iget-object v2, p0, Lorg/apache/commons/digester/plugins/Declaration;->id:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClass:Ljava/lang/Class;

    iget-object v4, p0, Lorg/apache/commons/digester/plugins/Declaration;->properties:Ljava/util/Properties;

    invoke-virtual {p2, p1, v2, v3, v4}, Lorg/apache/commons/digester/plugins/PluginManager;->findLoader(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Properties;)Lorg/apache/commons/digester/plugins/RuleLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    goto :goto_1

    :cond_2
    const-string p1, "This declaration has an explicit ruleLoader."

    .line 170
    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_1
    if-eqz v1, :cond_4

    .line 174
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    const-string p2, "]."

    const-string v1, ", class ["

    const-string v2, "]"

    if-nez p1, :cond_3

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ruleLoader found for plugin declaration id ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/digester/plugins/Declaration;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 180
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuleLoader of type ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/digester/plugins/Declaration;->ruleLoader:Lorg/apache/commons/digester/plugins/RuleLoader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] associated with plugin declaration"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/digester/plugins/Declaration;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/Declaration;->pluginClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->initialized:Z

    return-void

    .line 150
    :cond_5
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginAssertionFailure;

    const-string p2, "Init called multiple times."

    invoke-direct {p1, p2}, Lorg/apache/commons/digester/plugins/PluginAssertionFailure;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/Declaration;->id:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Properties;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/Declaration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    return-void
.end method
