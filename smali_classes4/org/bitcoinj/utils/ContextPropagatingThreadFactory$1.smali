.class Lorg/bitcoinj/utils/ContextPropagatingThreadFactory$1;
.super Ljava/lang/Object;
.source "ContextPropagatingThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

.field final synthetic val$context:Lorg/bitcoinj/core/Context;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;Lorg/bitcoinj/core/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory$1;->this$0:Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    iput-object p2, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory$1;->val$context:Lorg/bitcoinj/core/Context;

    iput-object p3, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory$1;->val$context:Lorg/bitcoinj/core/Context;

    invoke-static {v0}, Lorg/bitcoinj/core/Context;->propagate(Lorg/bitcoinj/core/Context;)V

    .line 49
    iget-object v0, p0, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-static {}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Exception in thread"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
