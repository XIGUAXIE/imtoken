.class public interface abstract Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;
.super Ljava/lang/Object;
.source "IPaymentChannelClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/IPaymentChannelClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientConnection"
.end annotation


# virtual methods
.method public abstract acceptExpireTime(J)Z
.end method

.method public abstract channelOpen(Z)V
.end method

.method public abstract destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
.end method

.method public abstract sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
.end method
