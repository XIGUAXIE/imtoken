.class Lorg/bitcoinj/net/NioClientManager$PendingConnect;
.super Ljava/lang/Object;
.source "NioClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/net/NioClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingConnect"
.end annotation


# instance fields
.field address:Ljava/net/SocketAddress;

.field connection:Lorg/bitcoinj/net/StreamConnection;

.field future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field sc:Ljava/nio/channels/SocketChannel;

.field final synthetic this$0:Lorg/bitcoinj/net/NioClientManager;


# direct methods
.method constructor <init>(Lorg/bitcoinj/net/NioClientManager;Ljava/nio/channels/SocketChannel;Lorg/bitcoinj/net/StreamConnection;Ljava/net/SocketAddress;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->this$0:Lorg/bitcoinj/net/NioClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 47
    iput-object p2, p0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->sc:Ljava/nio/channels/SocketChannel;

    iput-object p3, p0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->connection:Lorg/bitcoinj/net/StreamConnection;

    iput-object p4, p0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->address:Ljava/net/SocketAddress;

    return-void
.end method
