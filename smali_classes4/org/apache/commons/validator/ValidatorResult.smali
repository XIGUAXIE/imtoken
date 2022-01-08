.class public Lorg/apache/commons/validator/ValidatorResult;
.super Ljava/lang/Object;
.source "ValidatorResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/validator/ValidatorResult$ResultStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33888580f310dc63L


# instance fields
.field protected field:Lorg/apache/commons/validator/Field;

.field protected hAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/ValidatorResult$ResultStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/validator/Field;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->hAction:Ljava/util/Map;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->field:Lorg/apache/commons/validator/Field;

    .line 54
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorResult;->field:Lorg/apache/commons/validator/Field;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/ValidatorResult;->add(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->hAction:Ljava/util/Map;

    new-instance v1, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;

    invoke-direct {v1, p2, p3}, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;-><init>(ZLjava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public containsAction(Ljava/lang/String;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->hAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/ValidatorResult$ResultStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->hAction:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getActions()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->hAction:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/validator/Field;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->field:Lorg/apache/commons/validator/Field;

    return-object v0
.end method

.method public getResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->hAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->getResult()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResult;->hAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->isValid()Z

    move-result p1

    :goto_0
    return p1
.end method
