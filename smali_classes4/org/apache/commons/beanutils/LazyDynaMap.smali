.class public Lorg/apache/commons/beanutils/LazyDynaMap;
.super Lorg/apache/commons/beanutils/LazyDynaBean;
.source "LazyDynaMap.java"

# interfaces
.implements Lorg/apache/commons/beanutils/MutableDynaClass;


# instance fields
.field protected name:Ljava/lang/String;

.field protected restricted:Z

.field protected returnNull:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaBean;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->returnNull:Z

    if-nez p1, :cond_0

    const-string p1, "LazyDynaMap"

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->name:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->newMap()Ljava/util/Map;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    .line 106
    iput-object p0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 2

    const/4 v0, 0x0

    .line 125
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 127
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 128
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaMap;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaClass;)V
    .locals 1

    .line 139
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaMap;->add(Ljava/lang/String;Ljava/lang/Class;)V

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

    if-eqz p1, :cond_3

    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/LazyDynaMap;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 352
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DynaClass is currently restricted. No new properties can be added."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Property name is missing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 386
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "readable/writable properties not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected add(Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 1

    .line 397
    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;->add(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 7

    .line 253
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/beanutils/DynaProperty;

    .line 254
    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 256
    iget-object v4, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    .line 257
    new-instance v6, Lorg/apache/commons/beanutils/DynaProperty;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 258
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_1
    invoke-direct {v6, v3, v4}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v6, v0, v2

    move v2, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 2

    if-eqz p1, :cond_2

    .line 226
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->isReturnNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 235
    :cond_1
    new-instance v1, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1

    .line 221
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected isDynaProperty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 479
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRestricted()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->restricted:Z

    return v0
.end method

.method public isReturnNull()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->returnNull:Z

    return v0
.end method

.method public newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .locals 5

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->newMap()Ljava/util/Map;

    move-result-object v0

    .line 285
    :goto_0
    new-instance v1, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/util/Map;)V

    .line 286
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 289
    invoke-virtual {v1, v4}, Lorg/apache/commons/beanutils/LazyDynaMap;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    return-object v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 419
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 420
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DynaClass is currently restricted. No properties can be removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property name is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaMap;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid property name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (DynaClass is restricted)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->values:Ljava/util/Map;

    return-void
.end method

.method public setRestricted(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->restricted:Z

    return-void
.end method

.method public setReturnNull(Z)V
    .locals 0

    .line 456
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaMap;->returnNull:Z

    return-void
.end method
