.class public Lorg/apache/commons/digester/plugins/PluginDeclarationRule;
.super Lorg/apache/commons/digester/Rule;
.source "PluginDeclarationRule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    return-void
.end method

.method public static declarePlugin(Lorg/apache/commons/digester/Digester;Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/digester/plugins/PluginException;
        }
    .end annotation

    const-string v0, "id"

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    .line 93
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 105
    new-instance v2, Lorg/apache/commons/digester/plugins/Declaration;

    invoke-direct {v2, v1}, Lorg/apache/commons/digester/plugins/Declaration;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v0}, Lorg/apache/commons/digester/plugins/Declaration;->setId(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, p1}, Lorg/apache/commons/digester/plugins/Declaration;->setProperties(Ljava/util/Properties;)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/digester/plugins/PluginRules;

    .line 110
    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/PluginRules;->getPluginManager()Lorg/apache/commons/digester/plugins/PluginManager;

    move-result-object p1

    .line 112
    invoke-virtual {v2, p0, p1}, Lorg/apache/commons/digester/plugins/Declaration;->init(Lorg/apache/commons/digester/Digester;Lorg/apache/commons/digester/plugins/PluginManager;)V

    .line 113
    invoke-virtual {p1, v2}, Lorg/apache/commons/digester/plugins/PluginManager;->addDeclaration(Lorg/apache/commons/digester/plugins/Declaration;)V

    return-void

    .line 101
    :cond_0
    new-instance p0, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;

    const-string p1, "mandatory attribute class not present on plugin declaration"

    invoke-direct {p0, p1}, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_1
    new-instance p0, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;

    const-string p1, "mandatory attribute id not present on plugin declaration"

    invoke-direct {p0, p1}, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    .line 70
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 72
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    :cond_0
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_1
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_2
    :try_start_0
    iget-object p1, p0, Lorg/apache/commons/digester/plugins/PluginDeclarationRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-static {p1, p2}, Lorg/apache/commons/digester/plugins/PluginDeclarationRule;->declarePlugin(Lorg/apache/commons/digester/Digester;Ljava/util/Properties;)V
    :try_end_0
    .catch Lorg/apache/commons/digester/plugins/PluginInvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error on element ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/digester/plugins/PluginDeclarationRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->getMatch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/digester/plugins/PluginInvalidInputException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
