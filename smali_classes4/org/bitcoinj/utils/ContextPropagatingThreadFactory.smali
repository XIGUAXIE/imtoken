.class public Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;
.super Ljava/lang/Object;
.source "ContextPropagatingThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final name:Ljava/lang/String;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 38
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->name:Ljava/lang/String;

    .line 34
    iput p2, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->priority:I

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 27
    sget-object v0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 43
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory$1;-><init>(Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;Lorg/bitcoinj/core/Context;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 56
    iget p1, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->priority:I

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 58
    sget-object p1, Lorg/bitcoinj/utils/Threading;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-object v1
.end method
