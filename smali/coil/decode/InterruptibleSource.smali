.class public final Lcoil/decode/InterruptibleSource;
.super Lokio/ForwardingSource;
.source "InterruptibleSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lokio/ForwardingSource;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterruptibleSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InterruptibleSource.kt\ncoil/decode/InterruptibleSource\n+ 2 Extensions.kt\ncoil/util/-Extensions\n*L\n1#1,153:1\n153#2:154\n153#2:155\n153#2:156\n153#2:157\n*E\n*S KotlinDebug\n*F\n+ 1 InterruptibleSource.kt\ncoil/decode/InterruptibleSource\n*L\n86#1:154\n115#1:155\n134#1:156\n65#1:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0001\u0018\u00002\u00020\u00012#\u0012\u0015\u0012\u0013\u0018\u00010\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00070\u0002j\u0002`\u0008B\u0019\u0012\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0006\u0010\u0013\u001a\u00020\u0007J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0013\u0010\u0018\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0002R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcoil/decode/InterruptibleSource;",
        "Lokio/ForwardingSource;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "Lkotlinx/coroutines/CompletionHandler;",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "delegate",
        "Lokio/Source;",
        "(Lkotlinx/coroutines/CancellableContinuation;Lokio/Source;)V",
        "_state",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "targetThread",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "clearInterrupt",
        "invalidState",
        "",
        "state",
        "",
        "invoke",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "setInterruptible",
        "interruptible",
        "",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final _state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final targetThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lokio/Source;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;",
            "Lokio/Source;",
            ")V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 57
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p0, Lcoil/decode/InterruptibleSource;->targetThread:Ljava/lang/Thread;

    .line 61
    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 64
    move-object p1, p0

    check-cast p1, Lcoil/decode/InterruptibleSource;

    .line 65
    iget-object p2, p1, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 157
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 p2, 0x3

    if-eq v1, p2, :cond_3

    const/4 p2, 0x4

    if-eq v1, p2, :cond_3

    const/4 p2, 0x5

    if-ne v1, p2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-direct {p1, v1}, Lcoil/decode/InterruptibleSource;->invalidState(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 67
    :cond_2
    iget-object v2, p1, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method private final invalidState(I)Ljava/lang/Void;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final setInterruptible(Z)V
    .locals 5

    .line 86
    iget-object v0, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_1

    .line 105
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    .line 108
    :cond_1
    invoke-direct {p0, v1}, Lcoil/decode/InterruptibleSource;->invalidState(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 94
    :cond_2
    iget-object v2, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->targetThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 96
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_3
    xor-int/2addr v2, p1

    .line 91
    iget-object v3, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method


# virtual methods
.method public final clearInterrupt()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    .line 124
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    .line 127
    :cond_1
    invoke-direct {p0, v1}, Lcoil/decode/InterruptibleSource;->invalidState(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 117
    :cond_2
    iget-object v2, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcoil/decode/InterruptibleSource;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 5

    .line 134
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v3, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0, v0}, Lcoil/decode/InterruptibleSource;->invalidState(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 143
    :cond_3
    iget-object v1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_4
    iget-object v3, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->targetThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 139
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 2

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 77
    :try_start_0
    invoke-direct {p0, v0}, Lcoil/decode/InterruptibleSource;->setInterruptible(Z)V

    .line 78
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-direct {p0, v1}, Lcoil/decode/InterruptibleSource;->setInterruptible(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1}, Lcoil/decode/InterruptibleSource;->setInterruptible(Z)V

    throw p1
.end method
