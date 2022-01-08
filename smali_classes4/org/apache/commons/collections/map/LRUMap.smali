.class public Lorg/apache/commons/collections/map/LRUMap;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap;
.source "LRUMap.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final DEFAULT_MAX_SIZE:I = 0x64

.field private static final serialVersionUID:J = -0x87eab066ef95b52L


# instance fields
.field private transient maxSize:I

.field private scanUntilRemovable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x64

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 86
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    move v1, p1

    .line 126
    :goto_0
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(IF)V

    if-lt p1, v0, :cond_1

    .line 130
    iput p1, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    .line 131
    iput-boolean p3, p0, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    return-void

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LRUMap max size must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 98
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2

    .line 159
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 160
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->putAll(Ljava/util/Map;)V

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

    .line 411
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 412
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 404
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    move-object v6, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 237
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LRUMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, 0x0

    .line 240
    iget-boolean v2, v6, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    const-string v3, " If so, then please report this to commons-dev@jakarta.apache.org as a bug."

    const-string v7, " Please check that your keys are immutable, and that you have used synchronization properly."

    const-string v8, " maxSize="

    const-string v9, " size="

    const-string v10, " value="

    const-string v11, " key="

    const-string v12, " header.before"

    if-eqz v2, :cond_3

    .line 241
    :goto_0
    iget-object v2, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 246
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 249
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Entry.after=null, header.after"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v6, Lorg/apache/commons/collections/map/LRUMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v6, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v1

    :goto_2
    move-object v2, v0

    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    move-object v0, p0

    move-object v1, v2

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 267
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections/map/LRUMap;->reuseMapping(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 261
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "reuse=null, header.after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v6, Lorg/apache/commons/collections/map/LRUMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v6, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_5
    invoke-super/range {p0 .. p4}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 272
    :cond_6
    invoke-super/range {p0 .. p4}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 396
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 427
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    .line 428
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 420
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V

    .line 179
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isFull()Z
    .locals 2

    .line 366
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScanUntilRemovable()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    return v0
.end method

.method public maxSize()I
    .locals 1

    .line 375
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    return v0
.end method

.method protected moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V
    .locals 2

    .line 191
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 192
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/LRUMap;->modCount:I

    .line 194
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 195
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 198
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 199
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 200
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t move header to MRU (please report this to commons-dev@jakarta.apache.org)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected reuseMapping(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, " If so, then please report this to commons-dev@jakarta.apache.org as a bug."

    const-string v5, " Please check that your keys are immutable, and that you have used synchronization properly."

    const-string v6, " maxSize="

    const-string v7, " size="

    const-string v8, " value="

    const-string v9, " key="

    const/4 v10, 0x1

    .line 292
    :try_start_0
    iget v11, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->hashCode:I

    iget-object v12, v0, Lorg/apache/commons/collections/map/LRUMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v12, v12

    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/collections/map/LRUMap;->hashIndex(II)I

    move-result v11

    .line 293
    iget-object v12, v0, Lorg/apache/commons/collections/map/LRUMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 294
    aget-object v12, v12, v11

    const/4 v13, 0x0

    :goto_0
    if-eq v12, v1, :cond_0

    if-eqz v12, :cond_0

    .line 298
    iget-object v13, v12, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    goto :goto_0

    :cond_0
    if-eqz v12, :cond_1

    .line 309
    iget v12, v0, Lorg/apache/commons/collections/map/LRUMap;->modCount:I

    add-int/2addr v12, v10

    iput v12, v0, Lorg/apache/commons/collections/map/LRUMap;->modCount:I

    .line 310
    invoke-virtual {v0, v1, v11, v13}, Lorg/apache/commons/collections/map/LRUMap;->removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 311
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/LRUMap;->reuseEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    .line 312
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/collections/map/LRUMap;->addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V

    return-void

    .line 301
    :cond_1
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Entry.next=null, data[removeIndex]="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v15, v0, Lorg/apache/commons/collections/map/LRUMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v11, v15, v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v11, " previous="

    invoke-virtual {v14, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v0, Lorg/apache/commons/collections/map/LRUMap;->size:I

    invoke-virtual {v14, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {v14, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 314
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "NPE, entry="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v13, " entryIsHeader="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v1, v13, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v0, Lorg/apache/commons/collections/map/LRUMap;->size:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method protected updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 1

    .line 217
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V

    .line 218
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
