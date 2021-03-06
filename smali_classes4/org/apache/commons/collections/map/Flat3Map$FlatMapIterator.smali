.class Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlatMapIterator"
.end annotation


# instance fields
.field private canRemove:Z

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections/map/Flat3Map;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .locals 1

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 587
    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 588
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 592
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 618
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 621
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 623
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$100(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$200(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 627
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$300(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 619
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 633
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 636
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 638
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$400(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$500(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 642
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$600(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 634
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 596
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections/map/Flat3Map;->access$000(Lorg/apache/commons/collections/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 603
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    .line 604
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 605
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 609
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v0, 0x0

    .line 614
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    return-void

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 664
    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    .line 665
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 648
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_3

    .line 651
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 652
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->nextIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$402(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$502(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$602(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    .line 649
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 669
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 670
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
