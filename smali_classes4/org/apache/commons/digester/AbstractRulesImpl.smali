.class public abstract Lorg/apache/commons/digester/AbstractRulesImpl;
.super Ljava/lang/Object;
.source "AbstractRulesImpl.java"

# interfaces
.implements Lorg/apache/commons/digester/Rules;


# instance fields
.field private digester:Lorg/apache/commons/digester/Digester;

.field private namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/digester/AbstractRulesImpl;->digester:Lorg/apache/commons/digester/Digester;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p2, v0}, Lorg/apache/commons/digester/Rule;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/AbstractRulesImpl;->namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p2, v0}, Lorg/apache/commons/digester/Rule;->setNamespaceURI(Ljava/lang/String;)V

    .line 108
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/AbstractRulesImpl;->registerRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public abstract clear()V
.end method

.method public getDigester()Lorg/apache/commons/digester/Digester;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/commons/digester/AbstractRulesImpl;->digester:Lorg/apache/commons/digester/Digester;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/digester/AbstractRulesImpl;->namespaceURI:Ljava/lang/String;

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

    .line 141
    iget-object v0, p0, Lorg/apache/commons/digester/AbstractRulesImpl;->namespaceURI:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/digester/AbstractRulesImpl;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method protected abstract registerRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
.end method

.method public abstract rules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation
.end method

.method public setDigester(Lorg/apache/commons/digester/Digester;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/apache/commons/digester/AbstractRulesImpl;->digester:Lorg/apache/commons/digester/Digester;

    return-void
.end method

.method public setNamespaceURI(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/apache/commons/digester/AbstractRulesImpl;->namespaceURI:Ljava/lang/String;

    return-void
.end method
