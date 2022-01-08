.class Lorg/bitcoinj/net/NioClientManager$1;
.super Ljava/lang/Object;
.source "NioClientManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/net/NioClientManager;->executor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/net/NioClientManager;


# direct methods
.method constructor <init>(Lorg/bitcoinj/net/NioClientManager;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/bitcoinj/net/NioClientManager$1;->this$0:Lorg/bitcoinj/net/NioClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 192
    new-instance v0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    const-string v1, "NioClientManager"

    invoke-direct {v0, v1}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
