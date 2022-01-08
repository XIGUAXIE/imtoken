.class public interface abstract Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandlerFactory"
.end annotation


# virtual methods
.method public abstract onNewConnection(Ljava/net/SocketAddress;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
