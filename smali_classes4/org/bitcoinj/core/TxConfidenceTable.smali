.class public Lorg/bitcoinj/core/TxConfidenceTable;
.super Ljava/lang/Object;
.source "TxConfidenceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x3e8


# instance fields
.field protected lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lorg/bitcoinj/core/TransactionConfidence;",
            ">;"
        }
    .end annotation
.end field

.field private table:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 83
    invoke-direct {p0, v0}, Lorg/bitcoinj/core/TxConfidenceTable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "txconfidencetable"

    .line 40
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    new-instance v0, Lorg/bitcoinj/core/TxConfidenceTable$1;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/core/TxConfidenceTable$1;-><init>(Lorg/bitcoinj/core/TxConfidenceTable;I)V

    iput-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->table:Ljava/util/LinkedHashMap;

    .line 75
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/TxConfidenceTable;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private cleanTable()V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    check-cast v0, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;

    .line 100
    iget-object v1, p0, Lorg/bitcoinj/core/TxConfidenceTable;->table:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/TransactionConfidence;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->table:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 192
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 186
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/TransactionConfidence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getOrCreate(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/TransactionConfidence;
    .locals 4

    .line 158
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->table:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionConfidence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 167
    :cond_0
    :try_start_1
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence;

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/TransactionConfidence;-><init>(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 168
    iget-object v1, p0, Lorg/bitcoinj/core/TxConfidenceTable;->table:Ljava/util/LinkedHashMap;

    new-instance v2, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;

    iget-object v3, p0, Lorg/bitcoinj/core/TxConfidenceTable;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;-><init>(Lorg/bitcoinj/core/TransactionConfidence;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 171
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public numBroadcastPeers(Lorg/bitcoinj/core/Sha256Hash;)I
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 113
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/core/TxConfidenceTable;->cleanTable()V

    .line 114
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->table:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 118
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionConfidence;

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->table:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->numBroadcastPeers()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public seen(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/PeerAddress;)Lorg/bitcoinj/core/TransactionConfidence;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    invoke-direct {p0}, Lorg/bitcoinj/core/TxConfidenceTable;->cleanTable()V

    .line 144
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/TxConfidenceTable;->getOrCreate(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/TransactionConfidence;->markBroadcastBy(Lorg/bitcoinj/core/PeerAddress;)Z

    move-result p2

    .line 147
    iget-object v0, p0, Lorg/bitcoinj/core/TxConfidenceTable;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_0

    .line 149
    sget-object p2, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->SEEN_PEERS:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/TransactionConfidence;->queueListeners(Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V

    :cond_0
    return-object p1
.end method
