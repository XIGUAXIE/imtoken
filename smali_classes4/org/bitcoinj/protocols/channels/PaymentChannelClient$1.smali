.class Lorg/bitcoinj/protocols/channels/PaymentChannelClient$1;
.super Ljava/lang/Object;
.source "PaymentChannelClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->incrementPayment(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClient;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 719
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 720
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 721
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
