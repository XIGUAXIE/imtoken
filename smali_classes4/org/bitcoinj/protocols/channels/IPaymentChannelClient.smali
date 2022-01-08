.class public interface abstract Lorg/bitcoinj/protocols/channels/IPaymentChannelClient;
.super Ljava/lang/Object;
.source "IPaymentChannelClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$Factory;,
        Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;
    }
.end annotation


# virtual methods
.method public abstract connectionClosed()V
.end method

.method public abstract connectionOpen()V
.end method

.method public abstract incrementPayment(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2    # Lcom/google/protobuf/ByteString;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Lcom/google/protobuf/ByteString;",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;
        }
    .end annotation
.end method

.method public abstract receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation
.end method

.method public abstract settle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
