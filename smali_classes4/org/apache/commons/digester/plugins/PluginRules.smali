.class public Lorg/apache/commons/digester/plugins/PluginRules;
.super Ljava/lang/Object;
.source "PluginRules.java"

# interfaces
.implements Lorg/apache/commons/digester/Rules;


# instance fields
.field private decoratedRules:Lorg/apache/commons/digester/Rules;

.field protected digester:Lorg/apache/commons/digester/Digester;

.field private mountPoint:Ljava/lang/String;

.field private parent:Lorg/apache/commons/digester/plugins/PluginRules;

.field private pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

.field private pluginManager:Lorg/apache/commons/digester/plugins/PluginManager;

.field private rulesFactory:Lorg/apache/commons/digester/plugins/RulesFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    new-instance v0, Lorg/apache/commons/digester/RulesBase;

    invoke-direct {v0}, Lorg/apache/commons/digester/RulesBase;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/digester/plugins/PluginRules;-><init>(Lorg/apache/commons/digester/Rules;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Lorg/apache/commons/digester/plugins/PluginRules;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Ljava/lang/String;",
            "Lorg/apache/commons/digester/plugins/PluginRules;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/plugins/PluginException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->digester:Lorg/apache/commons/digester/Digester;

    .line 78
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->mountPoint:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->parent:Lorg/apache/commons/digester/plugins/PluginRules;

    .line 90
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    .line 140
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->digester:Lorg/apache/commons/digester/Digester;

    .line 141
    iput-object p2, p0, Lorg/apache/commons/digester/plugins/PluginRules;->mountPoint:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lorg/apache/commons/digester/plugins/PluginRules;->parent:Lorg/apache/commons/digester/plugins/PluginRules;

    .line 143
    iget-object p2, p3, Lorg/apache/commons/digester/plugins/PluginRules;->rulesFactory:Lorg/apache/commons/digester/plugins/RulesFactory;

    iput-object p2, p0, Lorg/apache/commons/digester/plugins/PluginRules;->rulesFactory:Lorg/apache/commons/digester/plugins/RulesFactory;

    if-nez p2, :cond_0

    .line 146
    new-instance p1, Lorg/apache/commons/digester/RulesBase;

    invoke-direct {p1}, Lorg/apache/commons/digester/RulesBase;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p2, p1, p4}, Lorg/apache/commons/digester/plugins/RulesFactory;->newRules(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;)Lorg/apache/commons/digester/Rules;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    .line 151
    :goto_0
    iget-object p1, p3, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    .line 152
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginManager;

    iget-object p2, p3, Lorg/apache/commons/digester/plugins/PluginRules;->pluginManager:Lorg/apache/commons/digester/plugins/PluginManager;

    invoke-direct {p1, p2}, Lorg/apache/commons/digester/plugins/PluginManager;-><init>(Lorg/apache/commons/digester/plugins/PluginManager;)V

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginManager:Lorg/apache/commons/digester/plugins/PluginManager;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Rules;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->digester:Lorg/apache/commons/digester/Digester;

    .line 78
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->mountPoint:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->parent:Lorg/apache/commons/digester/plugins/PluginRules;

    .line 90
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    .line 108
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    .line 110
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-direct {p1}, Lorg/apache/commons/digester/plugins/PluginContext;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    .line 111
    new-instance v0, Lorg/apache/commons/digester/plugins/PluginManager;

    invoke-direct {v0, p1}, Lorg/apache/commons/digester/plugins/PluginManager;-><init>(Lorg/apache/commons/digester/plugins/PluginContext;)V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginManager:Lorg/apache/commons/digester/plugins/PluginManager;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
    .locals 7

    .line 272
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->digester:Lorg/apache/commons/digester/Digester;

    invoke-static {v0}, Lorg/apache/commons/digester/plugins/LogUtils;->getLogger(Lorg/apache/commons/digester/Digester;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    const-string v2, " to rule of type ["

    const-string v3, "]"

    if-eqz v1, :cond_0

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add entry: mapping pattern ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const-string v4, "/"

    .line 281
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 283
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 286
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginRules;->mountPoint:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/commons/digester/plugins/PluginRules;->mountPoint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An attempt was made to add a rule with a pattern thatis not at or below the mountpoint of the current PluginRules object. Rule pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mountpoint: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->mountPoint:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rule type: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void

    .line 306
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/digester/Rules;->add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 308
    instance-of v4, p2, Lorg/apache/commons/digester/plugins/InitializableRule;

    if-eqz v4, :cond_4

    .line 310
    :try_start_0
    move-object v4, p2

    check-cast v4, Lorg/apache/commons/digester/plugins/InitializableRule;

    invoke-interface {v4, p1}, Lorg/apache/commons/digester/plugins/InitializableRule;->postRegisterInit(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/digester/plugins/PluginConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz v1, :cond_3

    const-string p2, "Rule initialisation failed"

    .line 318
    invoke-interface {v0, p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add exit: mapped pattern ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public clear()V
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->clear()V

    return-void
.end method

.method getDecoratedRules()Lorg/apache/commons/digester/Rules;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    return-object v0
.end method

.method public getDigester()Lorg/apache/commons/digester/Digester;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->digester:Lorg/apache/commons/digester/Digester;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/commons/digester/Rules;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->parent:Lorg/apache/commons/digester/plugins/PluginRules;

    return-object v0
.end method

.method public getPluginClassAttr()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v0}, Lorg/apache/commons/digester/plugins/PluginContext;->getPluginClassAttr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginClassAttrNs()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v0}, Lorg/apache/commons/digester/plugins/PluginContext;->getPluginClassAttrNs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginIdAttr()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v0}, Lorg/apache/commons/digester/plugins/PluginContext;->getPluginIdAttr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginIdAttrNs()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v0}, Lorg/apache/commons/digester/plugins/PluginContext;->getPluginIdAttrNs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginManager()Lorg/apache/commons/digester/plugins/PluginManager;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginManager:Lorg/apache/commons/digester/plugins/PluginManager;

    return-object v0
.end method

.method public getRuleFinders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/plugins/RuleFinder;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v0}, Lorg/apache/commons/digester/plugins/PluginContext;->getRuleFinders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRulesFactory()Lorg/apache/commons/digester/plugins/RulesFactory;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->rulesFactory:Lorg/apache/commons/digester/plugins/RulesFactory;

    return-object v0
.end method

.method public match(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/digester/plugins/PluginRules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->digester:Lorg/apache/commons/digester/Digester;

    invoke-static {v0}, Lorg/apache/commons/digester/plugins/LogUtils;->getLogger(Lorg/apache/commons/digester/Digester;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matching path ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] on rules object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 376
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/digester/plugins/PluginRules;->mountPoint:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/digester/plugins/PluginRules;->mountPoint:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    if-eqz v1, :cond_1

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] delegated to parent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->parent:Lorg/apache/commons/digester/plugins/PluginRules;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/digester/plugins/PluginRules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v1, "delegating to decorated rules."

    .line 391
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/digester/Rules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public rules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->rules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDigester(Lorg/apache/commons/digester/Digester;)V
    .locals 1

    .line 177
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->digester:Lorg/apache/commons/digester/Digester;

    .line 178
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0, p1}, Lorg/apache/commons/digester/Rules;->setDigester(Lorg/apache/commons/digester/Digester;)V

    return-void
.end method

.method public setNamespaceURI(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->decoratedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0, p1}, Lorg/apache/commons/digester/Rules;->setNamespaceURI(Ljava/lang/String;)V

    return-void
.end method

.method public setPluginClassAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/digester/plugins/PluginContext;->setPluginClassAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPluginIdAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/digester/plugins/PluginContext;->setPluginIdAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRuleFinders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/plugins/RuleFinder;",
            ">;)V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginRules;->pluginContext:Lorg/apache/commons/digester/plugins/PluginContext;

    invoke-virtual {v0, p1}, Lorg/apache/commons/digester/plugins/PluginContext;->setRuleFinders(Ljava/util/List;)V

    return-void
.end method

.method public setRulesFactory(Lorg/apache/commons/digester/plugins/RulesFactory;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginRules;->rulesFactory:Lorg/apache/commons/digester/plugins/RulesFactory;

    return-void
.end method
