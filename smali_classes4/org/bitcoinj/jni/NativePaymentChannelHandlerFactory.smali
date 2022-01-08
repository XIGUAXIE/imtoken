.class public Lorg/bitcoinj/jni/NativePaymentChannelHandlerFactory;
.super Ljava/lang/Object;
.source "NativePaymentChannelHandlerFactory.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onNewConnection(Ljava/net/SocketAddress;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
