.class public Lorg/apache/commons/collections/iterators/ArrayListIterator;
.super Lorg/apache/commons/collections/iterators/ArrayIterator;
.source "ArrayListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field protected lastItemIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;I)V

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 95
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;II)V

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 112
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 180
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() method is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasPrevious()Z
    .locals 2

    .line 123
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 160
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 137
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 169
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->startIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .line 210
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->reset()V

    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 199
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "must call next() or previous() before a call to set()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
