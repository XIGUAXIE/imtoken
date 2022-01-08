.class public abstract Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;
.super Ljava/lang/Object;
.source "ServerConnectionEventHandler.java"


# instance fields
.field private connectionChannel:Lorg/bitcoinj/net/ProtobufConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract channelClosed(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
.end method

.method public abstract channelOpen(Lorg/bitcoinj/core/Sha256Hash;)V
.end method

.method protected final declared-synchronized closeChannel()V
    .locals 3

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->connectionChannel:Lorg/bitcoinj/net/ProtobufConnection;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->connectionChannel:Lorg/bitcoinj/net/ProtobufConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 57
    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lorg/bitcoinj/net/ProtobufConnection;->write(Lcom/google/protobuf/MessageLite;)V

    .line 59
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->connectionChannel:Lorg/bitcoinj/net/ProtobufConnection;

    invoke-virtual {v0}, Lorg/bitcoinj/net/ProtobufConnection;->closeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel is not fully initialized/has already been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract paymentIncrease(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Lorg/bitcoinj/core/Coin;",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method declared-synchronized setConnectionChannel(Lorg/bitcoinj/net/ProtobufConnection;)V
    .locals 0
    .param p1    # Lorg/bitcoinj/net/ProtobufConnection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->connectionChannel:Lorg/bitcoinj/net/ProtobufConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
