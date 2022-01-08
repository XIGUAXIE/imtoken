.class public Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;
.super Ljava/lang/Object;
.source "PaymentChannelClientState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncrementedPayment"
.end annotation


# instance fields
.field public amount:Lorg/bitcoinj/core/Coin;

.field public signature:Lorg/bitcoinj/crypto/TransactionSignature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
