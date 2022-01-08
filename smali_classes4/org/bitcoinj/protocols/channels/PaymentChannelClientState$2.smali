.class Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$2;
.super Ljava/lang/Object;
.source "PaymentChannelClientState.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->watchCloseConfirmations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lorg/bitcoinj/core/TransactionConfidence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 189
    invoke-static {p1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p1, Lorg/bitcoinj/core/TransactionConfidence;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$2;->onSuccess(Lorg/bitcoinj/core/TransactionConfidence;)V

    return-void
.end method

.method public onSuccess(Lorg/bitcoinj/core/TransactionConfidence;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;)V

    return-void
.end method
