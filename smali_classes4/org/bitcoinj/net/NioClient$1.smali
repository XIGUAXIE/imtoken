.class Lorg/bitcoinj/net/NioClient$1;
.super Ljava/lang/Object;
.source "NioClient.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/net/NioClient;-><init>(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/net/SocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/net/NioClient;

.field final synthetic val$serverAddress:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Lorg/bitcoinj/net/NioClient;Ljava/net/SocketAddress;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/bitcoinj/net/NioClient$1;->this$0:Lorg/bitcoinj/net/NioClient;

    iput-object p2, p0, Lorg/bitcoinj/net/NioClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 112
    invoke-static {}, Lorg/bitcoinj/net/NioClient;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/net/NioClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    invoke-static {p1}, Lcom/google/common/base/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    const-string v2, "Connect to {} failed: {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Ljava/net/SocketAddress;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/net/NioClient$1;->onSuccess(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public onSuccess(Ljava/net/SocketAddress;)V
    .locals 0

    return-void
.end method
