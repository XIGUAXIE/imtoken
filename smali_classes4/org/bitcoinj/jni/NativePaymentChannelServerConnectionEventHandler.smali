.class public Lorg/bitcoinj/jni/NativePaymentChannelServerConnectionEventHandler;
.super Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;
.source "NativePaymentChannelServerConnectionEventHandler.java"


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public native channelClosed(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
.end method

.method public native channelOpen(Lorg/bitcoinj/core/Sha256Hash;)V
.end method

.method public native paymentIncrease(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.end method
