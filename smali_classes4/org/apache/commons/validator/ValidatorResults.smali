.class public Lorg/apache/commons/validator/ValidatorResults;
.super Ljava/lang/Object;
.source "ValidatorResults.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x259b89c4bf060aa7L


# instance fields
.field protected hResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/ValidatorResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/validator/Field;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/validator/ValidatorResults;->add(Lorg/apache/commons/validator/Field;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public add(Lorg/apache/commons/validator/Field;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/validator/ValidatorResults;->getValidatorResult(Ljava/lang/String;)Lorg/apache/commons/validator/ValidatorResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/apache/commons/validator/ValidatorResult;

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/ValidatorResult;-><init>(Lorg/apache/commons/validator/Field;)V

    .line 80
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/validator/ValidatorResult;->add(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getResultValueMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    invoke-virtual {p0, v2}, Lorg/apache/commons/validator/ValidatorResults;->getValidatorResult(Ljava/lang/String;)Lorg/apache/commons/validator/ValidatorResult;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Lorg/apache/commons/validator/ValidatorResult;->getActions()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    invoke-virtual {v3, v5}, Lorg/apache/commons/validator/ValidatorResult;->getResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 143
    instance-of v6, v5, Ljava/lang/Boolean;

    if-nez v6, :cond_1

    .line 144
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getValidatorResult(Ljava/lang/String;)Lorg/apache/commons/validator/ValidatorResult;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/ValidatorResult;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public merge(Lorg/apache/commons/validator/ValidatorResults;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    iget-object p1, p1, Lorg/apache/commons/validator/ValidatorResults;->hResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
