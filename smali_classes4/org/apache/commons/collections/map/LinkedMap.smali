.class public Lorg/apache/commons/collections/map/LinkedMap;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap;
.source "LinkedMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7df8d0862476476aL


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xc

    .line 75
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1

    .line 205
    new-instance v0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;-><init>(Lorg/apache/commons/collections/map/LinkedMap;)V

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->getEntry(I)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->getEntry(I)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections/map/LinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/LinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v2, :cond_1

    .line 170
    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/LinkedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 169
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
