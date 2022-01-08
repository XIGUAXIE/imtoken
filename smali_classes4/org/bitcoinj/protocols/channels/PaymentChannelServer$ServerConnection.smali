.class public interface abstract Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServerConnection"
.end annotation


# virtual methods
.method public abstract channelOpen(Lorg/bitcoinj/core/Sha256Hash;)V
.end method

.method public abstract destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
.end method

.method public abstract paymentIncrease(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;)Lcom/google/common/util/concurrent/ListenableFuture;
    .param p3    # Lcom/google/protobuf/ByteString;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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

.method public abstract sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
.end method
