.class public Lorg/apache/commons/digester/WithDefaultsRulesWrapper;
.super Ljava/lang/Object;
.source "WithDefaultsRulesWrapper.java"

# interfaces
.implements Lorg/apache/commons/digester/Rules;


# instance fields
.field private allRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private wrappedRules:Lorg/apache/commons/digester/Rules;


# direct methods
.method public constructor <init>(Lorg/apache/commons/digester/Rules;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->defaultRules:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->allRules:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrapped rules must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/digester/Rules;->add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 159
    iget-object p1, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->allRules:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDefault(Lorg/apache/commons/digester/Rule;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->getDigester()Lorg/apache/commons/digester/Digester;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->getDigester()Lorg/apache/commons/digester/Digester;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/digester/Rule;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/digester/Rule;->setNamespaceURI(Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->defaultRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->allRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->clear()V

    .line 149
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->allRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->defaultRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDefaults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->defaultRules:Ljava/util/List;

    return-object v0
.end method

.method public getDigester()Lorg/apache/commons/digester/Digester;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->getDigester()Lorg/apache/commons/digester/Digester;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

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

    const-string v0, ""

    .line 108
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 117
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/digester/Rules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 120
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->defaultRules:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

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

    .line 143
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->allRules:Ljava/util/List;

    return-object v0
.end method

.method public setDigester(Lorg/apache/commons/digester/Digester;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0, p1}, Lorg/apache/commons/digester/Rules;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 85
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->defaultRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/digester/Rule;

    .line 86
    invoke-virtual {v1, p1}, Lorg/apache/commons/digester/Rule;->setDigester(Lorg/apache/commons/digester/Digester;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNamespaceURI(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/commons/digester/WithDefaultsRulesWrapper;->wrappedRules:Lorg/apache/commons/digester/Rules;

    invoke-interface {v0, p1}, Lorg/apache/commons/digester/Rules;->setNamespaceURI(Ljava/lang/String;)V

    return-void
.end method
