.class public Lorg/apache/commons/digester/plugins/PluginCreateRule;
.super Lorg/apache/commons/digester/Rule;
.source "PluginCreateRule.java"

# interfaces
.implements Lorg/apache/commons/digester/plugins/InitializableRule;


# instance fields
.field private baseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private defaultPlugin:Lorg/apache/commons/digester/plugins/Declaration;

.field private initException:Lorg/apache/commons/digester/plugins/PluginConfigurationException;

.field private pattern:Ljava/lang/String;

.field private pluginClassAttr:Ljava/lang/String;

.field private pluginClassAttrNs:Ljava/lang/String;

.field private pluginIdAttr:Ljava/lang/String;

.field private pluginIdAttrNs:Ljava/lang/String;


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

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttrNs:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttrNs:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    .line 76
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttrNs:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttrNs:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    .line 91
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 93
    new-instance p1, Lorg/apache/commons/digester/plugins/Declaration;

    invoke-direct {p1, p2}, Lorg/apache/commons/digester/plugins/Declaration;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->defaultPlugin:Lorg/apache/commons/digester/plugins/Declaration;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lorg/apache/commons/digester/plugins/RuleLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/plugins/RuleLoader;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttrNs:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttrNs:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    .line 113
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 115
    new-instance p1, Lorg/apache/commons/digester/plugins/Declaration;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/digester/plugins/Declaration;-><init>(Ljava/lang/Class;Lorg/apache/commons/digester/plugins/RuleLoader;)V

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->defaultPlugin:Lorg/apache/commons/digester/plugins/Declaration;

    :cond_0
    return-void
.end method

.method private fireBodyMethods(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 535
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 536
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    .line 538
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 540
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/digester/Rule;

    if-eqz v1, :cond_0

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Fire body() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 544
    :cond_0
    invoke-virtual {v3, p2, p3, p4}, Lorg/apache/commons/digester/Rule;->body(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 548
    throw p1

    :catch_1
    move-exception p1

    .line 546
    iget-object p2, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p2, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    const-string v2, " match=["

    const-string v3, "PluginCreateRule.begin: pattern=["

    const-string v4, "]"

    if-eqz v1, :cond_0

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v6}, Lorg/apache/commons/digester/Digester;->getMatch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 312
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->initException:Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    if-nez v5, :cond_a

    .line 319
    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v5}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/digester/plugins/PluginRules;

    .line 320
    invoke-virtual {v5}, Lorg/apache/commons/digester/plugins/PluginRules;->getPluginManager()Lorg/apache/commons/digester/plugins/PluginManager;

    move-result-object v6

    .line 324
    iget-object v7, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttrNs:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 332
    iget-object v7, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    invoke-interface {p3, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 334
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    invoke-interface {p3, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 339
    :goto_0
    iget-object v8, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttrNs:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 340
    iget-object v8, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    invoke-interface {p3, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 342
    :cond_2
    iget-object v9, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    invoke-interface {p3, v8, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    if-eqz v7, :cond_3

    .line 353
    invoke-virtual {v6, v7}, Lorg/apache/commons/digester/plugins/PluginManager;->getDeclarationByClass(Ljava/lang/String;)Lorg/apache/commons/digester/plugins/Declaration;

    move-result-object v8

    if-nez v8, :cond_6

    .line 357
    new-instance v8, Lorg/apache/commons/digester/plugins/Declaration;

    invoke-direct {v8, v7}, Lorg/apache/commons/digester/plugins/Declaration;-><init>(Ljava/lang/String;)V

    .line 359
    :try_start_0
    iget-object v7, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v8, v7, v6}, Lorg/apache/commons/digester/plugins/Declaration;->init(Lorg/apache/commons/digester/Digester;Lorg/apache/commons/digester/plugins/PluginManager;)V
    :try_end_0
    .catch Lorg/apache/commons/digester/plugins/PluginException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    invoke-virtual {v6, v8}, Lorg/apache/commons/digester/plugins/PluginManager;->addDeclaration(Lorg/apache/commons/digester/plugins/Declaration;)V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 361
    new-instance p2, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;

    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/PluginException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/PluginException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    if-eqz v8, :cond_5

    .line 367
    invoke-virtual {v6, v8}, Lorg/apache/commons/digester/plugins/PluginManager;->getDeclarationById(Ljava/lang/String;)Lorg/apache/commons/digester/plugins/Declaration;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v8, v6

    goto :goto_2

    .line 370
    :cond_4
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Plugin id ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] is not defined."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_5
    iget-object v8, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->defaultPlugin:Lorg/apache/commons/digester/plugins/Declaration;

    if-eqz v8, :cond_9

    .line 382
    :cond_6
    :goto_2
    invoke-virtual {v8}, Lorg/apache/commons/digester/plugins/Declaration;->getPluginClass()Ljava/lang/Class;

    move-result-object v6

    .line 384
    iget-object v7, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v7}, Lorg/apache/commons/digester/Digester;->getMatch()Ljava/lang/String;

    move-result-object v7

    .line 391
    new-instance v9, Lorg/apache/commons/digester/plugins/PluginRules;

    iget-object v10, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-direct {v9, v10, v7, v5, v6}, Lorg/apache/commons/digester/plugins/PluginRules;-><init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Lorg/apache/commons/digester/plugins/PluginRules;Ljava/lang/Class;)V

    .line 392
    iget-object v10, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v10, v9}, Lorg/apache/commons/digester/Digester;->setRules(Lorg/apache/commons/digester/Rules;)V

    if-eqz v1, :cond_7

    .line 395
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PluginCreateRule.begin: installing new plugin: oldrules="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", newrules="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 401
    :cond_7
    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v10, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pattern:Ljava/lang/String;

    invoke-virtual {v8, v5, v10}, Lorg/apache/commons/digester/plugins/Declaration;->configure(Lorg/apache/commons/digester/Digester;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 405
    invoke-virtual {p0}, Lorg/apache/commons/digester/plugins/PluginCreateRule;->getDigester()Lorg/apache/commons/digester/Digester;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/apache/commons/digester/Digester;->push(Ljava/lang/Object;)V

    if-eqz v1, :cond_8

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v2}, Lorg/apache/commons/digester/Digester;->getMatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pushed instance of plugin ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 416
    :cond_8
    invoke-virtual {v9}, Lorg/apache/commons/digester/plugins/PluginRules;->getDecoratedRules()Lorg/apache/commons/digester/Rules;

    move-result-object v0

    invoke-interface {v0, p1, v7}, Lorg/apache/commons/digester/Rules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 417
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/digester/plugins/PluginCreateRule;->fireBeginMethods(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    .line 376
    :cond_9
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No plugin class specified for element "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pattern:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_a
    throw v5
.end method

.method public body(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->getMatch()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v1}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/digester/plugins/PluginRules;

    .line 444
    invoke-virtual {v1}, Lorg/apache/commons/digester/plugins/PluginRules;->getDecoratedRules()Lorg/apache/commons/digester/Rules;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/digester/Rules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/digester/plugins/PluginCreateRule;->fireBodyMethods(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->getMatch()Ljava/lang/String;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v1}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/digester/plugins/PluginRules;

    .line 467
    invoke-virtual {v1}, Lorg/apache/commons/digester/plugins/PluginRules;->getDecoratedRules()Lorg/apache/commons/digester/Rules;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lorg/apache/commons/digester/Rules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 468
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/digester/plugins/PluginCreateRule;->fireEndMethods(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v1}, Lorg/apache/commons/digester/plugins/PluginRules;->getParent()Lorg/apache/commons/digester/Rules;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/digester/Digester;->setRules(Lorg/apache/commons/digester/Rules;)V

    .line 476
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->pop()Ljava/lang/Object;

    return-void
.end method

.method public fireBeginMethods(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 507
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 508
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    .line 509
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 511
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/digester/Rule;

    if-eqz v1, :cond_0

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Fire begin() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 515
    :cond_0
    invoke-virtual {v3, p2, p3, p4}, Lorg/apache/commons/digester/Rule;->begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 519
    throw p1

    :catch_1
    move-exception p1

    .line 517
    iget-object p2, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p2, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public fireEndMethods(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 566
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 567
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    .line 568
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 569
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 571
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/digester/Rule;

    if-eqz v1, :cond_0

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Fire end() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 575
    :cond_0
    invoke-virtual {v3, p2, p3}, Lorg/apache/commons/digester/Rule;->end(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 579
    throw p1

    :catch_1
    move-exception p1

    .line 577
    iget-object p2, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p2, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public postRegisterInit(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/plugins/PluginConfigurationException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-static {v0}, Lorg/apache/commons/digester/plugins/LogUtils;->getLogger(Lorg/apache/commons/digester/Digester;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginCreateRule.postRegisterInit: rule registered for pattern ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 164
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    if-eqz v3, :cond_a

    .line 175
    iget-object v3, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pattern:Ljava/lang/String;

    if-nez v3, :cond_9

    const/16 v3, 0x2a

    .line 189
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "]."

    if-ne v3, v4, :cond_8

    .line 209
    iget-object v3, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    if-nez v3, :cond_1

    .line 210
    const-class v3, Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    .line 213
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v3}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/digester/plugins/PluginRules;

    .line 214
    invoke-virtual {v3}, Lorg/apache/commons/digester/plugins/PluginRules;->getPluginManager()Lorg/apache/commons/digester/plugins/PluginManager;

    move-result-object v4

    .line 217
    iget-object v6, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->defaultPlugin:Lorg/apache/commons/digester/plugins/Declaration;

    if-eqz v6, :cond_3

    .line 218
    iget-object v7, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    invoke-virtual {v6}, Lorg/apache/commons/digester/plugins/Declaration;->getPluginClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 228
    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->defaultPlugin:Lorg/apache/commons/digester/plugins/Declaration;

    iget-object v6, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/digester/plugins/Declaration;->init(Lorg/apache/commons/digester/Digester;Lorg/apache/commons/digester/plugins/PluginManager;)V
    :try_end_0
    .catch Lorg/apache/commons/digester/plugins/PluginException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    new-instance v0, Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/PluginException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/PluginException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/digester/plugins/PluginConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 219
    :cond_2
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default class ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->defaultPlugin:Lorg/apache/commons/digester/plugins/Declaration;

    invoke-virtual {v1}, Lorg/apache/commons/digester/plugins/Declaration;->getPluginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] does not inherit from ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->baseClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/digester/plugins/PluginConfigurationException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->initException:Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    .line 224
    throw p1

    .line 238
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pattern:Ljava/lang/String;

    .line 240
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    const-string v4, ", name="

    if-nez p1, :cond_4

    .line 243
    invoke-virtual {v3}, Lorg/apache/commons/digester/plugins/PluginRules;->getPluginClassAttrNs()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttrNs:Ljava/lang/String;

    .line 244
    invoke-virtual {v3}, Lorg/apache/commons/digester/plugins/PluginRules;->getPluginClassAttr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init: pluginClassAttr set to per-digester values [ns="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttrNs:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init: pluginClassAttr set to rule-specific values [ns="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttrNs:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 261
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 264
    invoke-virtual {v3}, Lorg/apache/commons/digester/plugins/PluginRules;->getPluginIdAttrNs()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttrNs:Ljava/lang/String;

    .line 265
    invoke-virtual {v3}, Lorg/apache/commons/digester/plugins/PluginRules;->getPluginIdAttr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: pluginIdAttr set to per-digester values [ns="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttrNs:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: pluginIdAttr set to rule-specific values [ns="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttrNs:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void

    .line 201
    :cond_8
    new-instance v0, Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A PluginCreateRule instance has been mapped to pattern ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " This pattern includes a wildcard character."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " This is not supported by the plugin architecture."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/digester/plugins/PluginConfigurationException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->initException:Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    .line 206
    throw v0

    .line 183
    :cond_9
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    const-string v0, "A single PluginCreateRule instance has been mapped to multiple patterns; this is not supported."

    invoke-direct {p1, v0}, Lorg/apache/commons/digester/plugins/PluginConfigurationException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->initException:Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    .line 186
    throw p1

    .line 169
    :cond_a
    new-instance p1, Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    const-string v0, "Invalid invocation of postRegisterInit: digester not set."

    invoke-direct {p1, v0}, Lorg/apache/commons/digester/plugins/PluginConfigurationException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->initException:Lorg/apache/commons/digester/plugins/PluginConfigurationException;

    .line 172
    throw p1
.end method

.method public setPluginClassAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttrNs:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginClassAttr:Ljava/lang/String;

    return-void
.end method

.method public setPluginIdAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttrNs:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lorg/apache/commons/digester/plugins/PluginCreateRule;->pluginIdAttr:Ljava/lang/String;

    return-void
.end method
