.class Lorg/apache/commons/collections/SequencedHashMap$Entry;
.super Ljava/lang/Object;
.source "SequencedHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/SequencedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

.field prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 88
    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->key:Ljava/lang/Object;

    .line 89
    iput-object p2, p0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->value:Ljava/lang/Object;

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

    .line 119
    :cond_1
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    return v0

    .line 122
    :cond_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

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

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->value:Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
