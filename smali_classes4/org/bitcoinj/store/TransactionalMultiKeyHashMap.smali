.class Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UniqueKeyType:",
        "Ljava/lang/Object;",
        "MultiKeyType:",
        "Ljava/lang/Object;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mapKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TMultiKeyType;",
            "Ljava/util/Set<",
            "TUniqueKeyType;>;>;"
        }
    .end annotation
.end field

.field mapValues:Lorg/bitcoinj/store/TransactionalHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/store/TransactionalHashMap<",
            "TUniqueKeyType;TValueType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-direct {v0}, Lorg/bitcoinj/store/TransactionalHashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapValues:Lorg/bitcoinj/store/TransactionalHashMap;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapKeys:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public AbortTransaction()V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapValues:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->abortDatabaseBatchWrite()V

    return-void
.end method

.method public BeginTransaction()V
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapValues:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->beginDatabaseBatchWrite()V

    return-void
.end method

.method public CommitTransaction()V
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapValues:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0}, Lorg/bitcoinj/store/TransactionalHashMap;->commitDatabaseBatchWrite()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUniqueKeyType;)TValueType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapValues:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/store/TransactionalHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUniqueKeyType;TMultiKeyType;TValueType;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapValues:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0, p1, p3}, Lorg/bitcoinj/store/TransactionalHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    iget-object p3, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapKeys:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    if-nez p3, :cond_0

    .line 210
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 211
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object p1, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapKeys:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public removeByMultiKey(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMultiKeyType;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->removeByUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeByUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUniqueKeyType;)TValueType;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/bitcoinj/store/TransactionalMultiKeyHashMap;->mapValues:Lorg/bitcoinj/store/TransactionalHashMap;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/store/TransactionalHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
