.class public Lorg/bitcoinj/core/TransactionConfidence;
.super Ljava/lang/Object;
.source "TransactionConfidence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/TransactionConfidence$Listener;,
        Lorg/bitcoinj/core/TransactionConfidence$Source;,
        Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;
    }
.end annotation


# static fields
.field private static final pinnedConfidenceObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/TransactionConfidence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appearedAtChainHeight:I

.field private broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/core/PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private confidenceType:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

.field private depth:I

.field private final hash:Lorg/bitcoinj/core/Sha256Hash;

.field private lastBroadcastedAt:Ljava/util/Date;

.field private listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/TransactionConfidence$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private overridingTransaction:Lorg/bitcoinj/core/Transaction;

.field private source:Lorg/bitcoinj/core/TransactionConfidence$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/TransactionConfidence;->pinnedConfidenceObjects:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->confidenceType:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->appearedAtChainHeight:I

    .line 144
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$Source;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->source:Lorg/bitcoinj/core/TransactionConfidence$Source;

    .line 148
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 149
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 150
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/TransactionConfidence$Listener;)V
    .locals 2

    .line 208
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 210
    sget-object p1, Lorg/bitcoinj/core/TransactionConfidence;->pinnedConfidenceObjects:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/core/TransactionConfidence$Listener;)V
    .locals 1

    .line 224
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/TransactionConfidence;->addEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/TransactionConfidence$Listener;)V

    return-void
.end method

.method public clearBroadcastBy()V
    .locals 2

    .line 401
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 402
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->lastBroadcastedAt:Ljava/util/Date;

    return-void
.end method

.method public duplicate()Lorg/bitcoinj/core/TransactionConfidence;
    .locals 3

    .line 434
    new-instance v0, Lorg/bitcoinj/core/TransactionConfidence;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/TransactionConfidence;-><init>(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 435
    iget-object v1, v0, Lorg/bitcoinj/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 436
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->lastBroadcastedAt:Ljava/util/Date;

    iput-object v1, v0, Lorg/bitcoinj/core/TransactionConfidence;->lastBroadcastedAt:Ljava/util/Date;

    .line 437
    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->confidenceType:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    iput-object v1, v0, Lorg/bitcoinj/core/TransactionConfidence;->confidenceType:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 439
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->overridingTransaction:Lorg/bitcoinj/core/Transaction;

    iput-object v1, v0, Lorg/bitcoinj/core/TransactionConfidence;->overridingTransaction:Lorg/bitcoinj/core/Transaction;

    .line 440
    iget v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->appearedAtChainHeight:I

    iput v1, v0, Lorg/bitcoinj/core/TransactionConfidence;->appearedAtChainHeight:I

    .line 441
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAppearedAtChainHeight()I
    .locals 3

    monitor-enter p0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v0, v1, :cond_0

    .line 242
    iget v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->appearedAtChainHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 241
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confidence type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", not BUILDING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBroadcastBy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/PeerAddress;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;
    .locals 1

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->confidenceType:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDepthFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/TransactionConfidence;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 504
    :try_start_0
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthFuture(ILjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDepthFuture(ILjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/TransactionConfidence;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 488
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 490
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    new-instance v1, Lorg/bitcoinj/core/TransactionConfidence$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/bitcoinj/core/TransactionConfidence$2;-><init>(Lorg/bitcoinj/core/TransactionConfidence;ILcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {p0, p2, v1}, Lorg/bitcoinj/core/TransactionConfidence;->addEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/TransactionConfidence$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDepthInBlocks()I
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->depth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastBroadcastedAt()Ljava/util/Date;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->lastBroadcastedAt:Ljava/util/Date;

    return-object v0
.end method

.method public declared-synchronized getOverridingTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 3

    monitor-enter p0

    .line 415
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->overridingTransaction:Lorg/bitcoinj/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 416
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confidence type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", not DEAD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSource()Lorg/bitcoinj/core/TransactionConfidence$Source;
    .locals 1

    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->source:Lorg/bitcoinj/core/TransactionConfidence$Source;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransactionHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public declared-synchronized incrementDepthInBlocks()I
    .locals 1

    monitor-enter p0

    .line 372
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->depth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markBroadcastBy(Lorg/bitcoinj/core/PeerAddress;)Z
    .locals 1

    .line 291
    invoke-static {}, Lorg/bitcoinj/core/Utils;->now()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->lastBroadcastedAt:Ljava/util/Date;

    .line 292
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 294
    :cond_0
    monitor-enter p0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object p1

    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne p1, v0, :cond_1

    .line 296
    sget-object p1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    iput-object p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->confidenceType:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 298
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public numBroadcastPeers()I
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public queueListeners(Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 4

    .line 452
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 453
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/core/TransactionConfidence$1;

    invoke-direct {v3, p0, v1, p1}, Lorg/bitcoinj/core/TransactionConfidence$1;-><init>(Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeEventListener(Lorg/bitcoinj/core/TransactionConfidence$Listener;)Z
    .locals 1

    .line 228
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    .line 230
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence;->pinnedConfidenceObjects:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return p1
.end method

.method public declared-synchronized setAppearedAtChainHeight(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 252
    :try_start_0
    iput p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->appearedAtChainHeight:I

    const/4 p1, 0x1

    .line 253
    iput p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->depth:I

    .line 254
    sget-object p1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/TransactionConfidence;->setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 251
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appearedAtChainHeight out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V
    .locals 1

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->confidenceType:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 270
    monitor-exit p0

    return-void

    .line 271
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->confidenceType:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 272
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->overridingTransaction:Lorg/bitcoinj/core/Transaction;

    .line 275
    :cond_1
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 276
    iput p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->depth:I

    const/4 p1, -0x1

    .line 277
    iput p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->appearedAtChainHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDepthInBlocks(I)V
    .locals 0

    monitor-enter p0

    .line 393
    :try_start_0
    iput p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->depth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLastBroadcastedAt(Ljava/util/Date;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->lastBroadcastedAt:Ljava/util/Date;

    return-void
.end method

.method public declared-synchronized setOverridingTransaction(Lorg/bitcoinj/core/Transaction;)V
    .locals 0
    .param p1    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 428
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->overridingTransaction:Lorg/bitcoinj/core/Transaction;

    .line 429
    sget-object p1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/TransactionConfidence;->setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V
    .locals 0

    monitor-enter p0

    .line 479
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionConfidence;->source:Lorg/bitcoinj/core/TransactionConfidence$Source;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 334
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    const-string v3, "Seen by "

    .line 337
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-le v1, v2, :cond_0

    const-string v1, " peers"

    goto :goto_0

    :cond_0
    const-string v1, " peer"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->lastBroadcastedAt:Ljava/util/Date;

    if-eqz v1, :cond_1

    const-string v1, " (most recently: "

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->lastBroadcastedAt:Ljava/util/Date;

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ". "

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_2
    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$3;->$SwitchMap$org$bitcoinj$core$TransactionConfidence$ConfidenceType:[I

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 356
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Appeared in best chain at height %d, depth %d."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 357
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getAppearedAtChainHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 356
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v1, "In conflict."

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "Pending/unconfirmed."

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "Dead: overridden by double spend and will not confirm."

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string v1, "Unknown confidence level."

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :goto_1
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->source:Lorg/bitcoinj/core/TransactionConfidence$Source;

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$Source;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;

    if-eq v1, v2, :cond_8

    const-string v1, " Source: "

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence;->source:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wasBroadcastBy(Lorg/bitcoinj/core/PeerAddress;)Z
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence;->broadcastBy:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
