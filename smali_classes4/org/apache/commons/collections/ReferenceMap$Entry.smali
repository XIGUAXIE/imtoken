.class Lorg/apache/commons/collections/ReferenceMap$Entry;
.super Ljava/lang/Object;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;

.field next:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field private final synthetic this$0:Lorg/apache/commons/collections/ReferenceMap;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/commons/collections/ReferenceMap$Entry;)V
    .locals 0

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    .line 752
    iput-object p2, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    .line 753
    iput p3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    .line 754
    iput-object p4, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    .line 755
    iput-object p5, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

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

    .line 780
    :cond_1
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    return v0

    .line 782
    :cond_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 783
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 784
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    goto :goto_0

    .line 786
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 760
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 765
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 791
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 792
    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .locals 3

    .line 802
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 803
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 805
    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 806
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result p1

    if-lez p1, :cond_4

    .line 807
    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_2

    .line 808
    :cond_4
    iget-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$600(Lorg/apache/commons/collections/ReferenceMap;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 809
    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    :cond_5
    :goto_2
    return v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 770
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 772
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    invoke-static {v1, v2, p1, v3}, Lorg/apache/commons/collections/ReferenceMap;->access$500(Lorg/apache/commons/collections/ReferenceMap;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 797
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
