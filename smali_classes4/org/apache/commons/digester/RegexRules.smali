.class public Lorg/apache/commons/digester/RegexRules;
.super Lorg/apache/commons/digester/AbstractRulesImpl;
.source "RegexRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/digester/RegexRules$RegisteredRule;
    }
.end annotation


# instance fields
.field private matcher:Lorg/apache/commons/digester/RegexMatcher;

.field private registeredRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/digester/RegexRules$RegisteredRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/digester/RegexMatcher;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/digester/AbstractRulesImpl;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/RegexRules;->registeredRules:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/RegexRules;->setRegexMatcher(Lorg/apache/commons/digester/RegexMatcher;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/commons/digester/RegexRules;->registeredRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getRegexMatcher()Lorg/apache/commons/digester/RegexMatcher;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/digester/RegexRules;->matcher:Lorg/apache/commons/digester/RegexMatcher;

    return-object v0
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

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/commons/digester/RegexRules;->registeredRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    iget-object v0, p0, Lorg/apache/commons/digester/RegexRules;->registeredRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/digester/RegexRules$RegisteredRule;

    .line 121
    iget-object v2, p0, Lorg/apache/commons/digester/RegexRules;->matcher:Lorg/apache/commons/digester/RegexMatcher;

    iget-object v3, v1, Lorg/apache/commons/digester/RegexRules$RegisteredRule;->pattern:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lorg/apache/commons/digester/RegexMatcher;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v1, v1, Lorg/apache/commons/digester/RegexRules$RegisteredRule;->rule:Lorg/apache/commons/digester/Rule;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected registerRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/apache/commons/digester/RegexRules;->registeredRules:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/commons/digester/RegexRules$RegisteredRule;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/digester/RegexRules$RegisteredRule;-><init>(Lorg/apache/commons/digester/RegexRules;Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public rules()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/digester/RegexRules;->registeredRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    iget-object v1, p0, Lorg/apache/commons/digester/RegexRules;->registeredRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/digester/RegexRules$RegisteredRule;

    .line 140
    iget-object v2, v2, Lorg/apache/commons/digester/RegexRules$RegisteredRule;->rule:Lorg/apache/commons/digester/Rule;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setRegexMatcher(Lorg/apache/commons/digester/RegexMatcher;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lorg/apache/commons/digester/RegexRules;->matcher:Lorg/apache/commons/digester/RegexMatcher;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RegexMatcher must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
