.class public Lorg/bitcoinj/protocols/payments/PaymentProtocol$Output;
.super Ljava/lang/Object;
.source "PaymentProtocol.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/payments/PaymentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Output"
.end annotation


# instance fields
.field public final amount:Lorg/bitcoinj/core/Coin;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final scriptData:[B


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Coin;[B)V
    .locals 0
    .param p1    # Lorg/bitcoinj/core/Coin;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$Output;->amount:Lorg/bitcoinj/core/Coin;

    .line 423
    iput-object p2, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$Output;->scriptData:[B

    return-void
.end method
