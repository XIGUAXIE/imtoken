.class public Lorg/apache/commons/collections/map/MultiKeyMap;
.super Ljava/lang/Object;
.source "MultiKeyMap.java"

# interfaces
.implements Lorg/apache/commons/collections/IterableMap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# instance fields
.field protected final map:Lorg/apache/commons/collections/map/AbstractHashedMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lorg/apache/commons/collections/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections/map/HashedMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/map/AbstractHashedMap;)Lorg/apache/commons/collections/map/MultiKeyMap;
    .locals 1

    if-eqz p0, :cond_1

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map must be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected checkKey(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 808
    instance-of p1, p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    if-eqz p1, :cond_0

    return-void

    .line 809
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Key must be a MultiKey"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 806
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Key must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 883
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 819
    new-instance v0, Lorg/apache/commons/collections/map/MultiKeyMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 157
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 158
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 160
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 163
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 285
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 286
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 288
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 291
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 423
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 424
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 426
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 429
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .line 571
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 572
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 574
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 577
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 871
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 895
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 902
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 875
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 138
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 139
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 141
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 266
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 268
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 271
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 402
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 403
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 405
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 408
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 549
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 550
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 552
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 555
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 361
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 364
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 502
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 505
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    if-eqz p4, :cond_3

    .line 508
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_3
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 653
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 656
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    if-eqz p4, :cond_3

    .line 659
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_3
    if-eqz p5, :cond_4

    .line 662
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_4
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 906
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 248
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 249
    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    if-nez p2, :cond_0

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p3, :cond_1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 383
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 384
    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    if-nez p2, :cond_0

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_0
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p3, :cond_1

    if-nez p2, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p4, :cond_2

    if-nez p1, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 528
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 529
    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    if-nez p2, :cond_0

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_0
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p3, :cond_1

    if-nez p2, :cond_4

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p4, :cond_2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_2
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_2
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p5, :cond_3

    if-nez p1, :cond_4

    goto :goto_3

    :cond_3
    invoke-virtual {p5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 683
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 684
    invoke-virtual {p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    if-nez p2, :cond_0

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_0
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p3, :cond_1

    if-nez p2, :cond_5

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p4, :cond_2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_2
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_2
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p5, :cond_3

    if-nez p2, :cond_5

    goto :goto_3

    :cond_3
    invoke-virtual {p5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_3
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p6, :cond_4

    if-nez p1, :cond_5

    goto :goto_4

    :cond_4
    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 887
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 855
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 833
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiKeyMap;->checkKey(Ljava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 178
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 179
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 181
    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 183
    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    .line 186
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 307
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 308
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 310
    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    .line 315
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 318
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2, p3}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 445
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 446
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 447
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 449
    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 451
    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object p1

    .line 454
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 457
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    .line 594
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 595
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v9, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v10

    .line 596
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v10

    move-object v11, v0

    :goto_0
    if-eqz v11, :cond_1

    .line 598
    iget v0, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v9, :cond_0

    move-object v0, p0

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v11}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 600
    iget-object v1, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, v11, v8}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    return-object v0

    .line 603
    :cond_0
    iget-object v11, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v11, Lorg/apache/commons/collections/keyvalue/MultiKey;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v10, v9, v11, v8}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 846
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 848
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/MultiKeyMap;->checkKey(Ljava/lang/Object;)V

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 879
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 202
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 203
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 206
    iget v5, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    .line 212
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 332
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 333
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 336
    iget v5, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 338
    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    .line 342
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 471
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 472
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 473
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v10, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 476
    iget v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 477
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 478
    iget-object p2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {p2, v2, v1, v10}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-object p1

    .line 482
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v10, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v7, p0

    .line 621
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 622
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v8, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v9

    .line 623
    iget-object v0, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v9

    const/4 v10, 0x0

    move-object v11, v0

    move-object v12, v10

    :goto_0
    if-eqz v11, :cond_1

    .line 626
    iget v0, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v8, :cond_0

    move-object v0, p0

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v11}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 628
    iget-object v1, v7, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, v11, v9, v12}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    return-object v0

    .line 632
    :cond_0
    iget-object v0, v11, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v12, v11

    move-object v11, v0

    goto :goto_0

    :cond_1
    return-object v10
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .locals 6

    .line 705
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 706
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 707
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 708
    invoke-virtual {v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 710
    :goto_1
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 729
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 730
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 731
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 732
    invoke-virtual {v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 735
    :goto_2
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 755
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 756
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 757
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 758
    invoke-virtual {v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p3, :cond_3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    :goto_3
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 783
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 784
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 785
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 786
    invoke-virtual {v3}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p3, :cond_3

    if-nez v4, :cond_0

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_3
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p4, :cond_4

    if-nez v3, :cond_0

    goto :goto_4

    :cond_4
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    :goto_4
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public size()I
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 910
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 891
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
