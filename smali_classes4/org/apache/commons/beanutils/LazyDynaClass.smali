.class public Lorg/apache/commons/beanutils/LazyDynaClass;
.super Lorg/apache/commons/beanutils/BasicDynaClass;
.source "LazyDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/MutableDynaClass;


# instance fields
.field protected restricted:Z

.field protected returnNull:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 64
    move-object v1, v0

    check-cast v1, [Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    check-cast v0, [Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/BasicDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 1

    .line 93
    const-class v0, Lorg/apache/commons/beanutils/LazyDynaBean;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    .line 165
    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    :goto_0
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Class;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 210
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "readable/writable properties not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected add(Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 4

    .line 224
    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 239
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/beanutils/DynaProperty;

    .line 240
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    array-length v0, v0

    aput-object p1, v1, v0

    .line 244
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;->setProperties([Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void

    .line 229
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DynaClass is currently restricted. No new properties can be added."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 2

    if-eqz p1, :cond_1

    .line 323
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/DynaProperty;

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isReturnNull()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 320
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDynaProperty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 354
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 351
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRestricted()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->restricted:Z

    return v0
.end method

.method public isReturnNull()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 279
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lorg/apache/commons/beanutils/DynaProperty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 281
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 282
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    aget-object v4, v0, v2

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;->setProperties([Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void

    .line 268
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DynaClass is currently restricted. No properties can be removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRestricted(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->restricted:Z

    return-void
.end method

.method public setReturnNull(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    return-void
.end method
