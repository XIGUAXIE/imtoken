.class final Lorg/apache/commons/collections/StaticBucketMap$Node;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field protected key:Ljava/lang/Object;

.field protected next:Lorg/apache/commons/collections/StaticBucketMap$Node;

.field protected value:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V
    .locals 0

    .line 454
    invoke-direct {p0}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 480
    :cond_1
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    return v0

    .line 483
    :cond_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 485
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-nez v2, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v2, :cond_4

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 472
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 494
    iput-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method
